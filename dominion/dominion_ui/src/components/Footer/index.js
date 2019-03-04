import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import About from './About';
import Community from './Community';
import Project from './Project';

import background from '../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    paddingTop: '3.1875rem',
    paddingLeft: '1.875rem',
    paddingBottom: '2.875rem',
    [theme.breakpoints.up('md')]: {
      paddingTop: '5.25rem',
      paddingLeft: 0,
      paddingBottom: '3.375rem'
    }
  },
  about: {
    paddingRight: '1.375rem',
    [theme.breakpoints.up('md')]: {
      padding: 0
    }
  },
  organisation: {
    width: '100%',
    marginTop: '1.625rem', // 26px / 16
    [theme.breakpoints.up('md')]: {
      width: 'auto',
      marginTop: 0,
      marginLeft: '7rem'
    }
  },
  community: {},
  project: {
    marginLeft: '1.25rem'
  }
});

function Footer({ classes }) {
  return (
    <Grid
      container
      className={classes.root}
      justify="center"
      alignItems="flex-start"
    >
      <Grid item className={classes.about}>
        <About />
      </Grid>
      <Grid item className={classes.organisation}>
        <Grid container justify="space-between" alignItems="flex-start">
          <Grid item className={classes.community}>
            <Community />
          </Grid>
          <Grid item className={classes.project}>
            <Project />
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  );
}

Footer.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Footer);
