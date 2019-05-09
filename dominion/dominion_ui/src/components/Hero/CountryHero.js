import React from 'react';

import { PropTypes } from 'prop-types';
import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Hero, {
  HeroTitle,
  HeroDescription,
  HeroTitleGrid,
  HeroButton
} from './Hero';

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
    zIndex: 100,
    [theme.breakpoints.up('md')]: {
      position: 'absolute !important',
      right: '50px',
      width: '70% !important',
      height: '460px !important',
      maxHeight: '460px !important',
      maxWidth: '829px !important'
    },
    [theme.breakpoints.up('lg')]: {
      right: '9.375rem'
    }
  }
});

function CountryHero({ classes, toggleModal, dominion }) {
  const { selectedCountry = { name: '' } } = dominion;
  return (
    <Hero>
      <HeroTitleGrid>
        <HeroTitle>{selectedCountry.name}</HeroTitle>
        <HeroDescription>
          Dominion makes data available to help add context and authority to
          public discourse and policy-making on vital issues of land ownership.
        </HeroDescription>

        <HeroButton onClick={toggleModal('search')}>Find a place</HeroButton>

        <p style={{ marginTop: '40px' }}>
          or view{' '}
          <a
            href={`/profiles/country-${selectedCountry.code}-${
              selectedCountry.slug
            }`}
          >
            {selectedCountry.name}
          </a>
        </p>
      </HeroTitleGrid>
      <Grid id="slippy-map" className={classes.map} />
    </Hero>
  );
}

CountryHero.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  dominion: PropTypes.shape({}).isRequired,
  toggleModal: PropTypes.func.isRequired
};

export default withStyles(styles)(CountryHero);
