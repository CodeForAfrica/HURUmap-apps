import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Hidden } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import background from '../../assets/images/kaitlyn-baker-422999-unsplash.png';

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
      width: '23.4375rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      width: '31.25rem' // 500px / 16
    }
  },
  highlight: {
    marginLeft: 'auto',
    marginRight: 0,
    height: '2.5rem',
    background: '#e7e452',
    [theme.breakpoints.up('md')]: {
      width: '15.9375rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      width: '21.25rem' // 340px / 16
    }
  },
  img: {
    width: '100%',
    height: '25rem', // 400px / 16
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    [theme.breakpoints.up('md')]: {
      width: '23.4375rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      width: '31.25rem' // 500px / 16
    }
  },
  contents: {
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: 'auto',
      marginTop: '3.5rem', // highlight.height + 1rem
      marginLeft: '2.765625rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      marginLeft: '3.6875rem' // 59px / 16
    }
  }
});

function Documents({ classes }) {
  return (
    <Grid
      container
      className={classes.root}
      justify="flex-start"
      alignItems="flex-start"
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
