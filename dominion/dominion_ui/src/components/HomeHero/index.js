import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import herobg from '../../assets/images/bg/hero_bg.png';
import smallscreenbackground from '../../assets/images/bg/smallscreen_background.png';
import HeroMap from './HeroMap';
import HeroDetail from './HeroDetail';

const styles = theme => ({
  heroContentGrid: {
    flexGrow: 1,
    backgroundImage: `url(${smallscreenbackground})`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: 'right top',
    height: 500,
    margin: 0,
    [theme.breakpoints.up('md')]: {
      backgroundImage: `url(${herobg})`,
      backgroundPosition: 'center',
      backgroundSize: 'auto',
      height: '70vh'
    },
    [theme.breakpoints.up('lg')]: {
      paddingTop: theme.spacing.unit * 10
      //  paddingLeft: theme.spacing.unit * 14.5
    }
  },
  heroMapGrid: {
    marginTop: theme.spacing.unit * 8,
    marginLeft: 0,
    [theme.breakpoints.up('md')]: {
      marginTop: theme.spacing.unit * 4,
      marginLeft: -theme.spacing.unit * 4
    }
  },
  heroContentDetail: {
    marginTop: -theme.spacing.unit * 5
  }
});

function HomeHero({ classes, isDropdownOpen, handleToggle, countries }) {
  return (
    <Grid container direction="row" className={classes.heroContentGrid}>
      <Grid item xs={12} sm={12} md={8} lg={8} xl={8}>
        <HeroDetail
          isDropdownOpen={isDropdownOpen}
          handleToggle={handleToggle}
          countries={countries}
        />
      </Grid>
      <Grid
        item
        xs={12}
        sm={12}
        md={4}
        lg={4}
        xl={4}
        className={classes.heroMapGrid}
      >
        <HeroMap />
      </Grid>
    </Grid>
  );
}

HomeHero.propTypes = {
  classes: PropTypes.shape().isRequired,
  handleToggle: PropTypes.func.isRequired,
  countries: PropTypes.isRequired,
  isDropdownOpen: PropTypes.bool.isRequired
};

export default withStyles(styles)(HomeHero);
