import React from 'react';

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
  }
};

class CountryHero extends React.Component {
  render() {
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
      </Hero>
    );
  }
}

export default withStyles(styles)(CountryHero);
