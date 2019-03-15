import React, { Component } from 'react';

import { PropTypes } from 'prop-types';
import { Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Hero, { HeroTitle, HeroTitleGrid, HeroDetail } from './Hero';
import createAPI from '../../api';

import Search from '../Search';
import ReleaseDropdown from '../ReleaseDropdown';
import searchIcon from '../../assets/images/icons/location.svg';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  map: {
    position: 'relative !important',
    height: '250px !important',
    left: 'unset !important',
    top: 'unset !important',
    [theme.breakpoints.up('md')]: {
      position: 'absolute !important',
      right: '50px',
      width: '50% !important',
      height: '460px !important',
      maxHeight: '460px !important',
      maxWidth: '829px !important'
    },
    [theme.breakpoints.up('lg')]: {
      right: '9.375rem'
    }
  },
  caption: {
    color: '#8d8d8c',
    fontSize: '0.75em',
    textTransform: 'capitalize',
    paddingTop: theme.spacing.unit,
    paddingBottom: theme.spacing.unit
  },
  captionItem: {
    display: 'inline-block'
  },
  release: {
    display: 'none',
    [theme.breakpoints.up('md')]: {
      color: '#8d8d8c',
      fontSize: '0.95em',
      position: 'absolute',
      bottom: '16%',
      display: 'inline-block',
      right: '4%'
    },
    [theme.breakpoints.up('lg')]: {
      bottom: '13.5%',
      right: '9.375rem'
    }
  }
});
class ProfileHero extends Component {
  constructor(props) {
    super(props);
    this.state = {
      level: '',
      geoid: ''
    };
  }

  async componentDidMount() {
    // get level from mapit
    const geoid = window.geography.full_geoid;
    const api = createAPI();
    const level = await api.getGeoLevel(geoid);

    this.setState({
      level,
      geoid
    });
  }

  render() {
    const { level, geoid } = this.state;
    const { classes } = this.props;
    const { profileDataJson } = window;
    let population;
    let populationDensity;
    let primaryReleases;
    let squarekms;
    let profileName;
    let parentLinks;
    if (profileDataJson) {
      primaryReleases = profileDataJson.primary_releases;
      squarekms = profileDataJson.geography.this.square_kms;
      profileName = profileDataJson.geography.this.short_name;
      parentLinks = profileDataJson.geography.parents;

      if (
        Object.prototype.hasOwnProperty.call(profileDataJson, 'demographics')
      ) {
        const { demographics } = profileDataJson;

        if (
          Object.prototype.hasOwnProperty.call(demographics, 'total_population')
        ) {
          population = demographics.total_population.values.this;
        }
        if (
          Object.prototype.hasOwnProperty.call(
            demographics,
            'population_density'
          )
        ) {
          populationDensity = demographics.population_density.values.this;
        }
      }
    }

    return (
      <Hero>
        <HeroTitleGrid quater>
          <HeroTitle breakWord small>
            {profileName}
          </HeroTitle>
          <Typography variant="body2" className={classes.caption} component="p">
            {level}{' '}
            {parentLinks && Object.keys(parentLinks).length > 1 ? (
              <Typography variant="body" className={classes.captionItem}>
                in{' '}
                {Object.keys(parentLinks)
                  .slice(0, -1)
                  .map(item => (
                    <span>
                      <a href={`/profiles/${parentLinks[item].full_geoid}`}>
                        {parentLinks[item].name}
                      </a>
                      {', '}
                    </span>
                  ))}
              </Typography>
            ) : null}
          </Typography>
          {population ? (
            <HeroDetail label="Population">{population}</HeroDetail>
          ) : null}
          {squarekms ? (
            <HeroDetail small label="square kilometers">
              {squarekms}
            </HeroDetail>
          ) : null}
          {populationDensity ? (
            <HeroDetail small label="people per square kilometer">
              {populationDensity}
            </HeroDetail>
          ) : null}
          <Search
            handleIconClick={null}
            isComparisonSearch
            placeholder="Compare this with"
            thisGeoId={geoid}
            icon={searchIcon}
          />
        </HeroTitleGrid>
        <Grid id="slippy-map" className={classes.map} />
        {primaryReleases &&
        Object.prototype.hasOwnProperty.call(primaryReleases, 'active') ? (
          <Typography variant="body2" className={classes.release}>
            {primaryReleases.active.citation}
            <ReleaseDropdown />
          </Typography>
        ) : null}
      </Hero>
    );
  }
}

ProfileHero.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(ProfileHero);
