import React from 'react';
import PropTypes from 'prop-types';
import classNames from 'classnames';

import { Button, Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import { PlayArrowOutlined, PlayArrow } from '@material-ui/icons';

const styles = theme => ({
  root: {
    flexGrow: 1,
    width: '100%',
    height: '100%',
    padding: '10px',
    [theme.breakpoints.up('md')]: {
      position: 'absolute'
    }
  },
  videoImage: {
    width: '100vw',
    [theme.breakpoints.up('md')]: {
      width: '250px'
    }
  },
  overlay: {
    width: '100%',
    height: '100%',
    position: 'absolute',
    backgroundColor: 'rgba(0, 0, 0, 0.75)'
  },
  overlaySelected: {
    backgroundColor: 'rgba(0, 0, 0, 0.5)'
  },
  button: {
    width: '100vw',
    textTransform: 'none',
    fontWeight: 800,
    fontSize: theme.typography.subtitle1.fontSize,
    color: '#fff',
    border: 'none',
    margin: 0,
    padding: 0,
    minWidth: 0,
    [theme.breakpoints.up('md')]: {
      width: 'auto'
    }
  },
  caption: {
    color: '#fff',
    textAlign: 'left'
  }
});

function Thumbnail({ classes, isSelected, onClick, videoId, videoTitle }) {
  const { overlay, overlaySelected } = classes;
  const rootOverlay = classNames(overlay, { [overlaySelected]: isSelected });

  return (
    <Button className={classes.button} onClick={() => onClick(videoId)}>
      <img
        className={classes.videoImage}
        alt={videoId}
        src={`https://img.youtube.com/vi/${videoId}/default.jpg`}
      />
      <div className={rootOverlay} />
      <Grid
        container
        className={classes.root}
        direction="column"
        justify="center"
        alignItems="flex-start"
      >
        <Grid item>{isSelected ? <PlayArrowOutlined /> : <PlayArrow />}</Grid>
        <Grid item>
          <Typography variant="caption" className={classes.caption}>
            {videoTitle}
          </Typography>
        </Grid>
      </Grid>
    </Button>
  );
}

Thumbnail.propTypes = {
  classes: PropTypes.shape().isRequired,
  isSelected: PropTypes.bool,
  onClick: PropTypes.func.isRequired,
  videoId: PropTypes.string.isRequired,
  videoTitle: PropTypes.string.isRequired
};

Thumbnail.defaultProps = {
  isSelected: false
};

export default withStyles(styles)(Thumbnail);
