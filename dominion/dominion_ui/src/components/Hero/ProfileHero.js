import React, { Component } from 'react';

import { PropTypes } from 'prop-types';
import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Hero, { HeroTitle, HeroTitleGrid, HeroDetail } from './Hero';

import SearchBar from '../Search/SearchBar';
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
  componentDidMount() {
    // get level info from mapit
  }

  render() {
    const { geography } = window.geography;
    const { population } = window.population;
    const { populationDensity } = window.population_density;
    const { classes } = this.props;
    return (
      <Hero>
        <HeroTitleGrid quater>
          <HeroTitle breakWord small>
            {geography.short_name}
          </HeroTitle>
          <p style={{ color: '#8d8d8c', fontSize: '0.75em' }}>
            Province in <a href="/country">South Africa</a>
          </p>
          <HeroDetail label="Population">{population}</HeroDetail>
          <HeroDetail small label="square kilometers">
            {geography.square_kms}
          </HeroDetail>
          <HeroDetail small label="people per square kilometer">
            {populationDensity}
          </HeroDetail>
          <SearchBar
            autoFocus={false}
            primary
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
