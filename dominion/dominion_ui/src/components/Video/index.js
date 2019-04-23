import React from 'react';
import PropTypes from 'prop-types';

import { Button, Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import PlayArrow from '@material-ui/icons/PlayArrow';

import PlayerModal from './PlayerModal';

import background from '../../assets/images/hero-image-1.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    height: '30rem' // 480px / 16
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
      height: '6.25rem', // 100px / 16
      paddingLeft: '2rem',
      paddingRight: '2rem'
    }
  },
  buttonLink: {
    textDecoration: 'none'
  },
  modal: {
    backgroundColor: 'rgba(0, 0, 0, 0.8)'
  }
});

class Video extends React.Component {
  constructor(props) {
    super(props);

    this.state = { open: false };
    this.toggleModal = this.toggleModal.bind(this);
  }

  toggleModal() {
    this.setState(prevState => ({
      open: !prevState.open
    }));
  }

  render() {
    const { classes, dominion } = this.props;
    const { open } = this.state;

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
              Watch how you can get the most out of Dominion.
            </Typography>

            <Grid item className={classes.buttonGrid}>
              <Button
                variant="outlined"
                color="primary"
                size="large"
                className={classes.button}
                onClick={this.toggleModal}
              >
                <PlayArrow />
              </Button>
            </Grid>
          </Grid>
        </Grid>
        <PlayerModal
          dominion={dominion}
          open={open}
          handleClose={this.toggleModal}
        />
      </Grid>
    );
  }
}

Video.propTypes = {
  classes: PropTypes.shape().isRequired,
  dominion: PropTypes.shape({}).isRequired
};

export default withStyles(styles)(Video);
