import React from 'react';
import PropTypes from 'prop-types';
import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import bmf from '../assets/images/logos/bmgf.png';
import cfa from '../assets/images/logos/codeforafrica.png';
import datazetu from '../assets/images/logos/datazetu.png';
import icfj from '../assets/images/logos/icfj.png';
import twaweza from '../assets/images/logos/twaweza.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: theme.palette.secondary.light,
    height: '16.9375rem',
    [theme.breakpoints.up('md')]: {
      height: '10rem'
    }
  },

  // 6 rem image + 4 rem padding = 10rem = 160px
  img: {
    maxHeight: '3.75rem',
    maxWidth: '30vw',
    [theme.breakpoints.up('md')]: {
      width: 'auto',
      maxWidth: '10rem'
    }
  },
  imageGrid: {
    padding: '1rem',
    [theme.breakpoints.up('md')]: {
      padding: '2rem 1rem'
    }
  }
});

function Partners({ classes }) {
  return (
    <Grid
      container
      className={classes.root}
      justify="center"
      alignItems="center"
    >
      <Grid item className={classes.imageGrid}>
        <img src={cfa} alt="Code for Africa" className={classes.img} />
      </Grid>
      <Grid item className={classes.imageGrid}>
        <img src={datazetu} alt="Data Zetu" className={classes.img} />
      </Grid>
      <Grid item className={classes.imageGrid}>
        <img src={twaweza} alt="Twaweza" className={classes.img} />
      </Grid>
      <Grid item className={classes.imageGrid}>
        <img src={bmf} alt="Bill and Melinda Gates" className={classes.img} />
      </Grid>
      <Grid item className={classes.imageGrid}>
        <img src={icfj} alt="Icfj" className={classes.img} />
      </Grid>
    </Grid>
  );
}

Partners.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Partners);
