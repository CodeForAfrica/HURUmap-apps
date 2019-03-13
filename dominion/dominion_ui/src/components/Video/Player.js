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
    height: 'calc(100vh - 6.25em)',
    backgroundColor: 'black'
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
    overflow: 'scroll',
    [theme.breakpoints.up('md')]: {
      width: '11.927rem',
      height: '26.406em'
    },
    [theme.breakpoints.up('lg')]: {
      width: '15rem',
      height: '35.391em'
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
              direction="column"
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
              style={{ marginLeft: '3.125em', padding: 0 }}
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
