import React from 'react';

import { PropTypes } from 'prop-types';
import { withStyles } from '@material-ui/core/styles';

import Hero, {
  HeroTitle,
  HeroDescription,
  HeroTitleGrid,
  HeroButton
} from './Hero';

const styles = {
  root: {
    flexGrow: 1
  },
  map: {
    position: 'absolute',
    backgroundColor: 'grey',
    height: '460px !important',
    width: '829px !important',
    maxHeight: '460px !important',
    maxWidth: '829px !important',
    right: '50px !important',
    left: 'unset !important',
    top: 'unset !important'
  }
};

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
        <div id="slippy-map" className={classes.map} />
      </Hero>
    );
  }
}

CountryHero.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(CountryHero);
