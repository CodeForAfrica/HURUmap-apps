import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Hero, {
  HeroTitle,
  HeroDescription,
  HeroTitleGrid,
  HeroButton
} from './Hero';

import herobg from '../../assets/images/bg/hero_bg.png';
import smallscreenbackground from '../../assets/images/bg/smallscreen_background.png';

import PortalChooser from '../Modal/PortalChooser';
import HomeHeroMap from './HomeHeroMap';

const styles = theme => ({
  heroContentGrid: {
    flexGrow: 1,
    backgroundImage: `url(${herobg})`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: 'center',
    backgroundSize: 'auto',
    width: '100%',
    height: '100%',
    [theme.breakpoints.down('sm')]: {
      backgroundImage: `url(${smallscreenbackground})`,
      backgroundPosition: 'right top'
    }
  }
});

function HomeHero({ classes }) {
  return (
    <Hero>
      <Grid
        container
        direction="row"
        justify="space-between"
        alignItems="center"
        className={classes.heroContentGrid}
      >
        <HeroTitleGrid>
          <HeroTitle>Discover the stories behind the data.</HeroTitle>

          <HeroDescription>
            Dominion makes data available to help add context and authority to
            public discourse and policy-making on vital issues of land
            ownership.
          </HeroDescription>

          <PortalChooser
            activator={({ toggleModal }) => (
              <HeroButton onClick={toggleModal}>Select a Country</HeroButton>
            )}
          />
        </HeroTitleGrid>
        <HomeHeroMap />
      </Grid>
    </Hero>
  );
}

HomeHero.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(HomeHero);
