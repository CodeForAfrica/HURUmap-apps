import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import bmf from '../../assets/images/logos/bmgf.png';
import cfa from '../../assets/images/logos/codeforafrica.png';
import datazetu from '../../assets/images/logos/datazetu.png';
import icfj from '../../assets/images/logos/icfj.png';
import twaweza from '../../assets/images/logos/twaweza.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: theme.palette.secondary.light,
    padding: theme.spacing.unit * 3
  },
  img: {
    maxWidth: '100%',
    height: 'auto'
  },
  imageGrid: { padding: theme.spacing.unit * 2 }
});

function Partners({ classes }) {
  return (
    <Grid
      container
      direction="row"
      justify="center"
      alignItems="center"
      className={classes.root}
    >
      <Grid item xs={8} sm={6} md={6} lg={2} style={{ padding: '2rem' }}>
        <img src={cfa} alt="Code for Africa" className={classes.img} />
      </Grid>
      <Grid item xs={8} sm={4} md={4} lg={2} className={classes.imageGrid}>
        <img src={datazetu} alt="Data Zetu" className={classes.img} />
      </Grid>
      <Grid item xs={8} sm={4} md={4} lg={2} className={classes.imageGrid}>
        <img src={twaweza} alt="Twaweza" className={classes.img} />
      </Grid>
      <Grid item xs={8} sm={4} md={4} lg={2} className={classes.imageGrid}>
        <img src={bmf} alt="Bill and Melinda Gates" className={classes.img} />
      </Grid>
      <Grid item xs={8} sm={4} md={4} lg={2} className={classes.imageGrid}>
        <img src={icfj} alt="Icfj" className={classes.img} />
      </Grid>
    </Grid>
  );
}

Partners.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Partners);
