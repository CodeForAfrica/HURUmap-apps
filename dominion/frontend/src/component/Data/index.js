import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import Documents from './Documents';
import DatasetsContent from './DatasetsContent';

const styles = () => ({
  root: {
    flexGrow: 1,
    padding: '2rem',
    height: 'auto'
  }
});

function Data({ classes }) {
  return (
    <Grid
      container
      className={classes.root}
      direction="row"
      justify="flex-start"
      alignItems="center"
    >
      <Grid item>
        <Documents />
      </Grid>
      <Grid item>
        <DatasetsContent />
      </Grid>
    </Grid>
  );
}

Data.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Data);
