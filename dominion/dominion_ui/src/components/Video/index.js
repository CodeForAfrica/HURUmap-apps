import React from 'react';
import PropTypes from 'prop-types';

import { Button, Grid, Modal, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import PlayArrow from '@material-ui/icons/PlayArrow';

import background from '../../assets/images/hero-image-1.png';
import IFrame from '../IFrame';
import Sources from './Sources';
import Thumbnail from './Thumbnail';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    height: '400px'
  },
  caption: {
    color: '#fff',
    textAlign: 'center'
  },
  subheading: { color: '#fff' },
  buttonGrid: { paddingTop: '1rem', textAlign: 'center' },
  button: {
    textTransform: 'none',
    fontWeight: 800,
    fontSize: theme.typography.subtitle1.fontSize,
    color: '#fff',
    border: '2px solid white',
    [theme.breakpoints.up('lg')]: {
      height: '6.5rem',
      paddingLeft: '2rem',
      paddingRight: '2rem'
    }
  },
  buttonLink: {
    textDecoration: 'none'
  },
  iframe: {
    // height: 720,
    // width: 1080
    marginTop: '3rem'
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

class Video extends React.Component {
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
      <Grid
        container
        className={classes.root}
        justify="center"
        alignItems="center"
      >
        <Grid
          item
          xs={12}
          container
          direction="column"
          justify="center"
          alignItems="center"
        >
          <Typography variant="h3" className={classes.subheading}>
            Using Dominion
          </Typography>
          <Grid item xs={8} sm={4} style={{ paddingTop: '1rem' }}>
            <Typography variant="caption" className={classes.caption}>
              Lorem ipsum dolor sit amet, nec partem definitionem at, vix eu
              alii timeam, vel falli appetere ut. Lorem ipsum dolor sit amet,
              nec partem definitionem at, vix eu alii timeam, vel falli appetere
              ut.
            </Typography>

            <Grid item className={classes.buttonGrid}>
              <Button
                variant="outline"
                color="primary"
                size="large"
                className={classes.button}
                onClick={this.toogleState}
              >
                <PlayArrow />
              </Button>
            </Grid>
          </Grid>
        </Grid>
        <Modal
          aria-labelledby="dominion-videos"
          aria-describedby="dominion-videos-list"
          open={open}
          onClose={this.toogleState}
        >
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
                      />
                    </Grid>
                  ))}
                </Grid>
              </div>
            </Grid>
          </Grid>
        </Modal>
      </Grid>
    );
  }
}

Video.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Video);
