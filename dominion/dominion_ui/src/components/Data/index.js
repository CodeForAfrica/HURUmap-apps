import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import Documents from './Documents';
import DatasetsContent from './DatasetsContent';

import databg from '../../assets/images/bg/databg.png';

const styles = theme => ({
  root: {
    backgroundColor: '#fff',
    padding: '2rem 0'
  },
  dataWrapper: {
    flexGrow: 1,
    paddingLeft: '1.875rem', // 30px / 16
    backgroundColor: '#fff',
    backgroundImage: `url(${databg})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: '13.5rem 75%',
    [theme.breakpoints.up('md')]: {
      paddingLeft: '0',
      backgroundSize: '68% 100%'
    },
    [theme.breakpoints.up('lg')]: {
      backgroundSize: '66% 100%'
    },
    [theme.breakpoints.up('xl')]: {
      backgroundSize: '62% 100%'
    }
  },
  data: {
    width: '100%',
    marginTop: '3.6875rem', // 59px / 16,
    [theme.breakpoints.up('md')]: {
      width: 'auto'
    }
  }
});

function Data({ classes }) {
  return (
    <div className={classes.root}>
      <Grid
        container
        className={classes.dataWrapper}
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
    </div>
  );
}

Data.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Data);
