import React, { Component } from 'react';

import { PropTypes } from 'prop-types';
import { Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Hero, { HeroTitle, HeroTitleGrid, HeroDetail } from './Hero';
import createAPI from '../../api';

import Search from '../Search';
import searchIcon from '../../assets/images/icons/location.svg';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  map: {
    position: 'relative !important',
    backgroundColor: 'grey',
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
  }
});
class ProfileHero extends Component {
  constructor(props) {
    super(props);
    this.state = { level: '' };
  }

  async componentDidMount() {
    // get level from mapit
    const geoid = window.geography.full_geoid;
    const api = createAPI();
    const level = await api.getGeoLevel(geoid);
    this.setState({ level });
  }

  render() {
    const { population } = window.population;
    const { populationDensity } = window.population_density;
    const { level } = this.state;
    const { classes } = this.props;

    return (
      <Hero>
        <HeroTitleGrid quater>
          <HeroTitle breakWord small>
            {window.geography.short_name}
          </HeroTitle>
          <Typography
            variant="body2"
            style={{
              color: '#8d8d8c',
              fontSize: '0.75em',
              textTransform: 'capitalize'
            }}
            component="p"
          >
            {level}{' '}
            {window.captionItems.length ? (
              <Typography variant="body" style={{ display: 'inline-block' }}>
                in{' '}
                {window.captionItems.slice(0, -1).map(item => (
                  <span>
                    <a href={`/profiles/${item.geoid}`}>{item.name}</a>{' '}
                  </span>
                ))}
              </Typography>
            ) : null}
          </Typography>
          <HeroDetail label="Population">{population}</HeroDetail>
          <HeroDetail small label="square kilometers">
            {window.geography.square_kms}
          </HeroDetail>
          <HeroDetail small label="people per square kilometer">
            {populationDensity}
          </HeroDetail>
          <Search
            handleIconClick={null}
            isCompareSearch
            placeholder="compare this with"
            icon={searchIcon}
          />
        </HeroTitleGrid>
        <Grid id="slippy-map" className={classes.map} />
      </Hero>
    );
  }
}

ProfileHero.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(ProfileHero);
