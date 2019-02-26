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
    [theme.breakpoints.down('lg')]: {
      backgroundImage: `url(${databg})`,
      backgroundRepeat: 'no-repeat',
      backgroundSize: '69%'
    },
    [theme.breakpoints.down('sm')]: {
      backgroundImage: `url(${databg})`,
      backgroundRepeat: 'no-repeat',
      backgroundSize: '80%'
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
