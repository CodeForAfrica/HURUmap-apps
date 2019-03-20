import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import PlayerModal from '../Video/PlayerModal';
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

    this.state = { open: false };
    this.toggleState = this.toggleState.bind(this);
  }

  toggleState() {
    this.setState(state => ({ open: !state.open }));
  }

  render() {
    const { classes, dominion } = this.props;
    const { open } = this.state;

    return (
      <div>
        <Typography variant="h2" className={classes.title}>
          How <br />
          it works
        </Typography>

        <Steps />
        <div className={classes.viewVideos}>
          <ViewVideos onClick={this.toggleState} />

          <PlayerModal
            dominion={dominion}
            open={open}
            handleClose={this.toggleState}
          />
        </div>
      </div>
    );
  }
}

Description.propTypes = {
  classes: PropTypes.shape().isRequired,
  dominion: PropTypes.shape({}).isRequired
};

export default withStyles(styles)(Description);
