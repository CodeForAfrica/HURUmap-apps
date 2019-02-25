import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import About from './About';
import Partners from './Partners';

const styles = () => ({
  root: {
    flexGrow: 1
  }
});

function Footer({ classes }) {
  return (
    <Grid
      container
      className={classes.root}
      direction="row"
      alignItems="center"
    >
      <Grid item xs={12}>
        <Partners />
      </Grid>
      <Grid item xs={12}>
        <About />
      </Grid>
    </Grid>
  );
}

Footer.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Footer);
