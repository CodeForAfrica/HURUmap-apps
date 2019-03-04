import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import IFrame from '../IFrame';
import Sources from './Sources';
import Thumbnail from './Thumbnail';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  iframe: {
    marginTop: '6rem'
  },
  videoPlayer: {
    width: '100vw',
    marginBottom: '2rem',
    [theme.breakpoints.up('md')]: {
      marginBottom: 0,
      width: '47rem', // 59.635 * 0.8
      marginRight: '0.708rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '63.0rem', // 79.5 * 0.8
      marginRight: '1.5rem'
    }
  },
  videoPlaylist: {
    width: '100vw',
    [theme.breakpoints.up('md')]: {
      width: '11.927rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '15rem'
    }
  },
  thumbnail: {
    height: 200
  }
});

class Player extends React.Component {
  constructor(props) {
    super(props);

    const { videoId } = props;
    this.state = { videoId };
    this.handleThumbnailClick = this.handleThumbnailClick.bind(this);
  }

  handleThumbnailClick(videoId) {
    if (videoId) {
      this.setState({ videoId });
    }
  }

  render() {
    const { classes } = this.props;
    const { videoId } = this.state;

    return (
      <Grid
        container
        className={classes.iframe}
        justify="center"
        alignItems="flex-start"
      >
        <Grid item>
          <div className={classes.videoPlayer}>
            <IFrame
              title="Dominion"
              src={`https://www.youtube-nocookie.com/embed/${videoId}`}
              allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
            />
          </div>
        </Grid>
        <Grid item>
          <div className={classes.videoPlaylist}>
            <Grid
              container
              direction="column"
              justify="center"
              alignItems="flex-start"
            >
              {Sources.map(source => (
                <Grid item>
                  <Thumbnail
                    videoId={source.id}
                    videoTitle={source.title}
                    className={classes.thumbnail}
                    onClick={this.handleThumbnailClick}
                    isSelected={source.id === videoId}
                  />
                </Grid>
              ))}
            </Grid>
          </div>
        </Grid>
      </Grid>
    );
  }
}

Player.propTypes = {
  classes: PropTypes.shape().isRequired,
  videoId: PropTypes.string.isRequired
};

export default withStyles(styles)(Player);
