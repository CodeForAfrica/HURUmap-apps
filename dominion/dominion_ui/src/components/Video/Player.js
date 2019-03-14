import React from 'react';
import PropTypes from 'prop-types';

import { Grid, IconButton } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import IFrame from '../IFrame';
import Sources from './Sources';
import Thumbnail from './Thumbnail';

import back from '../../assets/images/icons/back.svg';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: 'black',
    padding: '-1.875rem 0',
    [theme.breakpoints.up('md')]: {
      height: 'calc(100vh - 6.25em)'
    }
  },
  videoPlayer: {
    width: '100vw',
    marginBottom: '2rem',
    [theme.breakpoints.up('md')]: {
      width: '60vw'
    }
  },
  videoPlaylist: {
    width: '100vw',
    overflow: 'scroll',
    height: '85vw',
    [theme.breakpoints.up('md')]: {
      margin: '0 1.25rem',
      width: '15.625em',
      height: '33.7vw'
    }
  },
  thumbnail: {
    height: 200
  },
  closeButton: {
    padding: 0,
    position: 'absolute',
    right: '1.25rem',
    [theme.breakpoints.up('md')]: {
      position: 'relative',
      marginLeft: '2.5rem'
    }
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
    const { classes, handleClose } = this.props;
    const { videoId } = this.state;

    return (
      <Grid container alignItems="center" className={classes.root}>
        <Grid container item justify="center">
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
            <Grid
              item
              container
              direction="row"
              justify="center"
              alignItems="flex-start"
              className={classes.videoPlaylist}
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
          </Grid>
          <Grid constainer item justify="flex-end" alignItems="flex-start">
            <IconButton
              className={classes.closeButton}
              aria-label="Search"
              onClick={handleClose}
            >
              <img alt="Search" src={back} />
            </IconButton>
          </Grid>
        </Grid>
      </Grid>
    );
  }
}

Player.propTypes = {
  classes: PropTypes.shape().isRequired,
  videoId: PropTypes.string.isRequired,
  handleClose: PropTypes.func.isRequired
};

export default withStyles(styles)(Player);
