import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import FindFactsContent from './FindFactsContent';
import VisualizeContent from './VisualizeContent';
import GetContext from './GetContext';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  facts: {
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '8.8125rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      width: '11.75rem' // 188px / 16
    }
  },
  visual: {
    width: '100%',
    padding: '2rem 0',
    [theme.breakpoints.up('md')]: {
      width: '9rem', // .75 of lg
      marginLeft: '2.25rem', // 36px / 16
      marginRight: '2.3125rem', // 37px / 16
      padding: 0
    },
    [theme.breakpoints.up('lg')]: {
      width: '12rem' // 192px / 16
    }
  },
  context: {
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '9.796875rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      width: '13.0625rem' // 209px / 16
    }
  }
});
function Steps({ classes }) {
  return (
    <Grid
      container
      className={classes.root}
      justify="flex-start"
      alignItems="flex-start"
    >
      <Grid item className={classes.facts}>
        <FindFactsContent />
      </Grid>
      <Grid item className={classes.visual}>
        <VisualizeContent />
      </Grid>
      <Grid item>
        <GetContext />
      </Grid>
    </Grid>
  );
}

Steps.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Steps);
