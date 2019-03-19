import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Modal, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Player from '../Video/Player';
import Sources from '../Video/Sources';
import Steps from './Steps';
import ViewVideos from './ViewVideos';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  title: {
    padding: '1rem 0',
    textTransform: 'none'
  },
  steps: {
    paddingTop: '0.5625rem' // 9px / 16
  },
  viewVideos: {
    marginTop: '1.875rem',
    marginBottom: '3.875rem', // 62px / 16
    [theme.breakpoints.up('md')]: {
      marginTop: '5.875rem'
    }
  }
});

class Description extends Component {
  constructor(props) {
    super(props);

    const videoId = (Sources[0] && Sources[0].id) || null;
    this.state = { open: false, videoId };
    this.toggleState = this.toggleState.bind(this);
    this.changeVideoId = this.changeVideoId.bind(this);
  }

  toggleState() {
    this.setState(state => ({ open: !state.open }));
  }

  changeVideoId(videoId) {
    this.setState({ videoId });
  }

  render() {
    const { classes } = this.props;
    const { open, videoId } = this.state;

    return (
      <div>
        <Typography variant="h2" className={classes.title}>
          How <br />
          it works
        </Typography>

        <Steps />
        <div className={classes.viewVideos}>
          <ViewVideos onClick={this.toggleState} />
          <Modal
            aria-labelledby="dominion-videos"
            aria-describedby="dominion-videos-list"
            disableAutoFocus
            open={open}
            onClose={this.toggleState}
            className={classes.modal}
          >
            <Player videoId={videoId} />
          </Modal>
        </div>
      </div>
    );
  }
}

Description.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Description);
