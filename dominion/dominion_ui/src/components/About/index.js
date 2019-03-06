import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Header from './Header';
import Info from './Info';
import Land from './Land';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: '#fff',
    padding: '5.25rem 0'
  },
  header: {
    order: 2,
    width: '100%',
    margin: '1.875rem 1.875rem 1.875rem 1.375rem', // 30px / 16
    [theme.breakpoints.up('md')]: {
      order: 1,
      width: 'auto',
      margin: 0
    }
  },
  info: {
    order: 3,
    width: '100%',
    margin: '0 1.875rem 0 1.375rem',
    [theme.breakpoints.up('md')]: {
      order: 2,
      width: 'auto',
      margin: 0
    }
  },
  land: {
    order: 1,
    [theme.breakpoints.up('md')]: {
      order: 3,
      width: 'auto'
    },
    [theme.breakpoints.up('lg')]: {
      marginLeft: '5.875rem' // 94px / 16
    }
  }
});

function AboutDominion({ classes }) {
  return (
    <Grid
      container
      direction="row"
      className={classes.root}
      justify="center"
      alignItems="flex-start"
    >
      <Grid item className={classes.header}>
        <Header />
      </Grid>
      <Grid item className={classes.info}>
        <Info />
      </Grid>
      <Grid item className={classes.land}>
        <Land />
      </Grid>
    </Grid>
  );
}

AboutDominion.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(AboutDominion);
