import React from 'react';

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

function ProfileHero({ classes }) {
  const selectedCountry = window.selected_country || {};
  return (
    <Hero>
      <HeroTitleGrid quater>
        <HeroTitle breakWord small>
          Eastern Cape
        </HeroTitle>
        <p style={{ color: '#8d8d8c', fontSize: '0.75em' }}>
          Province in{' '}
          <a
            href={`/profiles/country-${selectedCountry.code}-${
              selectedCountry.slug
            }`}
          >
            {selectedCountry.name}
          </a>
        </p>
        <HeroDetail label="Population">6 996 976</HeroDetail>
        <HeroDetail small label="square kilometers">
          169 309.8
        </HeroDetail>
        <HeroDetail small label="people per square kilometer">
          41.3
        </HeroDetail>
        <SearchBar primary icon={searchIcon} />
      </HeroTitleGrid>
      <Grid id="slippy-map" className={classes.map} />
    </Hero>
  );
}

ProfileHero.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(ProfileHero);
