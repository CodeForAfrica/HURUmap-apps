import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import PlayArrow from '@material-ui/icons/PlayArrow';

import background from '../assets/images/bg/background.png';

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
  suheading: { color: '#fff' },
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
  }
});

function Video({ classes }) {
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
        <Typography variant="h3" className={classes.suheading}>
          Using Dominion
        </Typography>
        <Grid item xs={8} sm={4} style={{ paddingTop: '1rem' }}>
          <Typography variant="caption" className={classes.caption}>
            Lorem ipsum dolor sit amet, nec partem definitionem at, vix eu alii
            timeam, vel falli appetere ut. Lorem ipsum dolor sit amet, nec
            partem definitionem at, vix eu alii timeam, vel falli appetere ut.
          </Typography>

          <Grid item className={classes.buttonGrid}>
            <a href="/#">
              <Button
                variant="outline"
                color="primary"
                size="large"
                className={classes.button}
              >
                <PlayArrow />
              </Button>
            </a>
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  );
}

Video.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Video);
