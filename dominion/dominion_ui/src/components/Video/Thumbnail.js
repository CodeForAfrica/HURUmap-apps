import React from 'react';
import PropTypes from 'prop-types';
import classNames from 'classnames';

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
  rootSelected: {
    backgroundColor: 'rgba(0, 0, 0, 0.2)'
  },
  button: {
    textTransform: 'none',
    fontWeight: 800,
    fontSize: theme.typography.subtitle1.fontSize,
    color: '#fff',
    border: 'none',
    marginLeft: '0.5rem',
    padding: 0,
    minWidth: 0
  },
  caption: {
    color: '#fff',
    textAlign: 'left',
    marginLeft: '1rem'
  }
});

function Thumbnail({ classes, isSelected, onClick, videoId, videoTitle }) {
  const { root, rootSelected } = classes;
  const rootClassName = classNames(root, { [rootSelected]: isSelected });

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
        className={rootClassName}
        direction="column"
        justify="center"
        alignItems="flex-start"
      >
        {' '}
        <Grid item>
          <Button
            color="primary"
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
  isSelected: PropTypes.bool,
  onClick: PropTypes.func.isRequired,
  videoId: PropTypes.string.isRequired,
  videoTitle: PropTypes.string.isRequired
};

Thumbnail.defaultProps = {
  isSelected: false
};

export default withStyles(styles)(Thumbnail);
