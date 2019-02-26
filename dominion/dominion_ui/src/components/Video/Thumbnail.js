import React from 'react';
import PropTypes from 'prop-types';

import { Button, Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import PlayArrow from '@material-ui/icons/PlayArrow';

const styles = theme => ({
  root: {
    flexGrow: 1,
    height: 120

    // aspect-ratio box
    // paddingBottom: '56.2%'
  },
  caption: {
    color: '#fff',
    textAlign: 'center'
  },
  suheading: { color: '#fff' },
  buttonGrid: { paddingTop: '1rem', textAlign: 'center' },
  button: {
    textTransform: 'none',
    fontWeight: 800,
    fontSize: theme.typography.subtitle1.fontSize,
    color: '#fff',
    border: '2px solid white',
    [theme.breakpoints.up('lg')]: {
      // height: '6.5rem',
      paddingLeft: '2rem',
      paddingRight: '2rem'
    }
  },
  buttonLink: {
    textDecoration: 'none'
  }
});

function Thumbnail({ classes, onClick, videoId, videoTitle }) {
  return (
    <Grid
      container
      className={classes.root}
      direction="column"
      justify="center"
      alignItems="center"
      style={{
        height: 100,
        backgroundImage: `url(https://img.youtube.com/vi/${videoId}/default.jpg)`,
        backgroundRepeat: 'no-repeat',
        backgroundSize: 'cover'
      }}
    >
      <Grid item>
        <Button
          variant="outline"
          color="primary"
          size="large"
          className={classes.button}
          onClick={() => onClick(videoId)}
        >
          <PlayArrow />
        </Button>
      </Grid>
      <Grid item>
        <Typography variant="caption" className={classes.caption}>
          {videoTitle}
        </Typography>
      </Grid>
    </Grid>
  );
}

Thumbnail.propTypes = {
  classes: PropTypes.shape().isRequired,
  onClick: PropTypes.func.isRequired,
  videoId: PropTypes.string.isRequired,
  videoTitle: PropTypes.string.isRequired
};

export default withStyles(styles)(Thumbnail);
