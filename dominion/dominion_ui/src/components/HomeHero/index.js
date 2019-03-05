import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import herobg from '../../assets/images/bg/hero_bg.png';
import background from '../../assets/images/bg/background.png';
import smallscreenbackground from '../../assets/images/bg/smallscreen_background.png';
import HeroMap from './HeroMap';
import HeroDetail from './HeroDetail';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  heroContentGrid: {
    flexGrow: 1,
    backgroundImage: `url(${herobg})`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: 'center',
    backgroundSize: 'auto',
    height: '100vh',
    [theme.breakpoints.down('lg')]: {
      height: '80vh'
      //  paddingLeft: theme.spacing.unit * 14.5
    },
    [theme.breakpoints.down('sm')]: {
      backgroundImage: `url(${smallscreenbackground})`,
      backgroundPosition: 'right top',
      height: 500,
      margin: 0
    }
  },
  heroMapGrid: {
    marginLeft: '-35rem'
  },
  heroContentDetail: {}
});

function HomeHero({ classes }) {
  return (
    <Grid container className={classes.root}>
      <Grid
        container
        direction="column"
        justify="center"
        className={classes.heroContentGrid}
      >
        <Grid item justify="center" xs={12} sm={12} md={12} lg={8} xl={8}>
          <HeroDetail />
        </Grid>
        <Grid
          item
          xs={12}
          sm={12}
          md={12}
          lg={4}
          xl={4}
          className={classes.heroMapGrid}
        >
          <HeroMap />
        </Grid>
      </Grid>
    </Grid>
  );
}

HomeHero.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(HomeHero);
