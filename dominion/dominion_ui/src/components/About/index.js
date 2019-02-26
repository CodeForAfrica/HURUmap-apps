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
    padding: '2rem'
  },
  header: {
    order: 2,
    width: '100%',
    margin: '2rem 0',
    [theme.breakpoints.up('md')]: {
      order: 1,
      width: 'auto',
      margin: 0
    }
  },
  info: {
    order: 3,
    [theme.breakpoints.up('md')]: {
      order: 2
    }
  },
  land: {
    order: 1,
    [theme.breakpoints.up('md')]: {
      order: 3
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
