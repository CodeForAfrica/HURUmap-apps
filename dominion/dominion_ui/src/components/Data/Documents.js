import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Hidden } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import land from '../../assets/images/About/land.png';

import DocumentsContents from './DocumentsContents';

const styles = theme => ({
  root: {
    flexGrow: 1,
    width: '100%',

    [theme.breakpoints.up('md')]: {
      width: '42.75rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '53rem'
    }
  },
  map: {
    width: 0,
    [theme.breakpoints.up('md')]: {
      width: '26.5rem',
      paddingLeft: '3rem',
      paddingRight: '2rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '35rem',
      paddingLeft: '3rem',
      paddingRight: '2rem'
    }
  },
  highlight: {
    marginLeft: 'auto',
    marginRight: 0,
    width: '15rem',
    height: '2rem',
    background: '#e7e452'
  },
  img: {
    width: '100%',
    height: '25rem',
    backgroundImage: `url(${land})`,
    backgroundRepeat: 'no-repeat'
  },
  contents: {
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: 'auto'
    }
  }
});

function Documents({ classes }) {
  return (
    <Grid
      container
      className={classes.root}
      justify="flex-start"
      alignItems="center"
    >
      <Hidden smDown>
        <Grid item>
          <div className={classes.map}>
            <Grid item xs={12}>
              <div className={classes.highlight} />
            </Grid>
            <Grid item xs={12}>
              <div className={classes.img} />
            </Grid>
          </div>
        </Grid>
      </Hidden>
      <Grid item className={classes.contents}>
        <DocumentsContents />
      </Grid>
    </Grid>
  );
}

Documents.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Documents);
