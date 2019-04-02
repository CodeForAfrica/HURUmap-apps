import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography } from '@material-ui/core';

import { withStyles } from '@material-ui/core/styles';

import StoryList from './StoryList';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: 'white',
    padding: '3.1875rem 1.875rem',
    [theme.breakpoints.up('md')]: {
      padding: '3.1875rem 0',
      width: '80%'
    }
  },
  headline: {
    width: '100%',
    marginBottom: '2rem',
    [theme.breakpoints.up('md')]: {
      width: '59.625rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '79.5rem'
    }
  },
  headlineTitle: {
    textAlign: 'left',
    paddingBottom: '1rem'
  },
  headlineDescription: {
    textAlign: 'left'
  }
});

function Showcase({ classes, showcaseStories }) {
  return (
    <Grid
      container
      direction="column"
      className={classes.root}
      justify="center"
      alignItems="flex-end"
    >
      <Grid
        item
        xs={12}
        container
        direction="row"
        className={classes.headline}
        justify="flex-start"
        alignItems="center"
      >
        <Grid item xs={12}>
          <Typography variant="h2" className={classes.headlineTitle}>
            Showcase
          </Typography>
        </Grid>

        <Grid item xs={12}>
          <Typography variant="body2" className={classes.headlineDescription}>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua.
          </Typography>
        </Grid>
      </Grid>
      <Grid item xs={12}>
        <StoryList storyData={showcaseStories} />
      </Grid>
    </Grid>
  );
}

Showcase.propTypes = {
  classes: PropTypes.shape().isRequired,
  showcaseStories: PropTypes.shape().isRequired
};

export default withStyles(styles)(Showcase);
