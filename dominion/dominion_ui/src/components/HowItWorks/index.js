import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Modal, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import databg from '../../assets/images/bg/databg.png';
import blackArrow from '../../assets/images/icons/black-combined-shape.svg';

import Player from '../Video/Player';
import Sources from '../Video/Sources';
import FirstRow from './FirstRow';
import MiddleRow from './MiddleRow';
import LastRow from './LastRow';
import ImageContent from './ImageContent';

const styles = theme => ({
  root: {
    backgroundColor: '#fff',
    padding: '4rem 0'
  },
  dataWrapper: {
    flexGrow: 1,
    paddingLeft: '1.875rem', // 30px / 16
    backgroundColor: '#fff',
    backgroundImage: `url(${databg})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: '13.5rem 75%',
    [theme.breakpoints.up('md')]: {
      backgroundSize: '66% 100%'
    },
    [theme.breakpoints.up('xl')]: {
      backgroundSize: '62% 100%'
    }
  },
  data: {
    width: '100%',
    marginTop: '3.6875rem', // 59px / 16,
    [theme.breakpoints.up('md')]: {
      width: 'auto'
    }
  },
  mainContentGrid: {
    paddingTop: '3rem',
    [theme.breakpoints.up('md')]: {
      paddingLeft: '4rem'
    }
  },
  RowContentGrid: {
    paddingTop: '1.5rem',
    [theme.breakpoints.down('xs')]: {
      flexDirection: 'column'
    }
  },
  videoGrid: {
    paddingTop: '3rem',
    paddingBottom: '3rem',
    paddingRight: '2rem'
  }
});

class HowItWorks extends Component {
  constructor(props) {
    super(props);
    const videoId = (Sources[0] && Sources[0].id) || null;
    this.state = { open: false, videoId };
    this.toogleState = this.toogleState.bind(this);
    this.changeVideoId = this.changeVideoId.bind(this);
  }

  toogleState() {
    this.setState(state => ({ open: !state.open }));
  }

  changeVideoId(videoId) {
    this.setState({ videoId });
  }

  render() {
    const { classes } = this.props;
    const { open, videoId } = this.state;
    return (
      <div className={classes.root}>
        <Grid
          container
          className={classes.dataWrapper}
          justify="center"
          alignItems="center"
        >
          <Grid container direction="row" justify="center" alignItems="center">
            <Grid item xs={4}>
              <ImageContent />
            </Grid>

            <Grid
              xs={8}
              container
              direction="column"
              justify="cflex-start"
              alignItems="flex-start"
              className={classes.mainContentGrid}
            >
              <Grid item lg={3} xl={3} md={3} sm={12} xs={12}>
                <Typography variant="h2">
                  How <br />
                  it works
                </Typography>
              </Grid>

              <Grid
                item
                xs={12}
                spacing={24}
                container
                direction="row"
                justify="flex-start"
                alignItems="center"
                className={classes.RowContentGrid}
              >
                <FirstRow />
                <MiddleRow />
                <LastRow />
              </Grid>

              <Grid
                container
                xs={12}
                justify="flex-end"
                alignItems="center"
                className={classes.videoGrid}
              >
                <Typography variant="h6">
                  View videos{' '}
                  <Button href="#" onClick={this.toogleState}>
                    <img src={blackArrow} alt="Videos" />
                  </Button>
                </Typography>
                <Modal
                  aria-labelledby="dominion-videos"
                  aria-describedby="dominion-videos-list"
                  open={open}
                  onClose={this.toogleState}
                  className={classes.modal}
                >
                  <Player videoId={videoId} />
                </Modal>
              </Grid>
            </Grid>
          </Grid>
        </Grid>
      </div>
    );
  }
}

HowItWorks.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(HowItWorks);
