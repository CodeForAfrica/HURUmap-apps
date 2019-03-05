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
    [theme.breakpoints.up('md')]: {
      position: 'absolute !important',
      right: '50px',
      width: '70% !important',
      height: '460px !important',
      maxHeight: '460px !important',
      maxWidth: '829px !important'
    },
    [theme.breakpoints.up('lg')]: {
      right: '150px'
    }
  }
});

class CountryHero extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      selectedCountry: {
        name: 'South Africa'
      }
    };
  }

  componentDidMount() {
    if (window.COUNTRY) {
      this.setState({ selectedCountry: window.COUNTRY });
    }
  }

  render() {
    const { classes } = this.props;
    const { selectedCountry } = this.state;
    return (
      <Hero>
        <HeroTitleGrid>
          <HeroTitle>{selectedCountry.name}</HeroTitle>
          <HeroDescription>
            Dominion makes data available to help add context and authority to
            public discourse and policy-making on vital issues of land
            ownership.
          </HeroDescription>
          <HeroButton onClick={this.handleToggle}>Find a place</HeroButton>
          <p style={{ marginTop: '40px' }}>
            or view{' '}
            <a href={`#${selectedCountry.full_geoid}`}>
              {selectedCountry.name}
            </a>
          </p>
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
