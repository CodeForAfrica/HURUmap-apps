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
    backgroundColor: 'grey',
    height: '460px !important',
    width: '829px !important',
    maxHeight: '460px !important',
    maxWidth: '829px !important',
    left: 'unset !important',
    top: 'unset !important',
    [theme.breakpoints.up('sm')]: {
      position: 'absolute',
      right: '150px'
    },
    [theme.breakpoints.down('sm')]: {
      position: 'relative !important',
      width: '100% !important',
      height: '250px !important'
    }
  }
});

class CountryHero extends React.Component {
  render() {
    const { classes } = this.props;
    return (
      <Hero>
        <HeroTitleGrid>
          <HeroTitle>South Africa</HeroTitle>
          <HeroDescription>
            Dominion makes data available to help add context and authority to
            public discourse and policy-making on vital issues of land
            ownership.
          </HeroDescription>
          <HeroButton onClick={this.handleToggle}>Find a place</HeroButton>
        </HeroTitleGrid>
        <Grid id="slippy-map" className={classes.map} />
      </Hero>
    );
  }
}

CountryHero.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(CountryHero);
