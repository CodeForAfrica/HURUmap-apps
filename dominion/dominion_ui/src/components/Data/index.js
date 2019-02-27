import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import Documents from './Documents';
import DatasetsContent from './DatasetsContent';

import databg from '../../assets/images/bg/databg.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: '2rem',
    backgroundColor: '#fff',
    backgroundImage: `url(${databg})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: '60%',
    [theme.breakpoints.up('sm')]: {
      backgroundSize: '30% 60%'
    },
    [theme.breakpoints.up('md')]: {
      backgroundSize: '65% 100%'
    },
    [theme.breakpoints.up('lg')]: {
      backgroundSize: '63% 100%'
    },
    [theme.breakpoints.up('xl')]: {
      backgroundSize: '62% 100%'
    }
  },
  data: {
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: 'auto'
    }
  }
});

function Data({ classes }) {
  return (
    <Grid
      container
      className={classes.root}
      justify="center"
      alignItems="center"
    >
      <Grid item className={classes.data}>
        <Documents />
      </Grid>
      <Grid item className={classes.data}>
        <DatasetsContent />
      </Grid>
    </Grid>
  );
}

Data.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Data);
