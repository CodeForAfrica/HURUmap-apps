import React from 'react';
import PropTypes from 'prop-types';

import { Button, Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import PlayArrow from '@material-ui/icons/PlayArrow';

const styles = theme => ({
  root: {
    flexGrow: 1,
    height: 120,
    backgroundColor: 'rgba(0, 0, 0, 0.6)',
    width: '100vw',
    [theme.breakpoints.up('md')]: {
      width: '11.927rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '15rem'
    }
  },
  caption: {
    color: '#fff',
    textAlign: 'left'
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
    <div
      style={{
        height: 100,
        backgroundImage: `url(https://img.youtube.com/vi/${videoId}/default.jpg)`,
        backgroundRepeat: 'no-repeat',
        backgroundSize: 'cover'
      }}
    >
      <Grid
        container
        className={classes.root}
        direction="column"
        justify="center"
        alignItems="center"
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
    </div>
  );
}

Thumbnail.propTypes = {
  classes: PropTypes.shape().isRequired,
  onClick: PropTypes.func.isRequired,
  videoId: PropTypes.string.isRequired,
  videoTitle: PropTypes.string.isRequired
};

export default withStyles(styles)(Thumbnail);
