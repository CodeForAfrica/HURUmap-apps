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
    color: theme.palette.primary.main,
    textAlign: 'center'
  },
  suheading: { color: theme.palette.primary.main },
  buttonGrid: { paddingTop: '1rem', textAlign: 'center' },
  button: {
    textTransform: 'none',
    fontWeight: 800,
    fontSize: theme.typography.subtitle1.fontSize,
    color: theme.palette.primary.main,
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
    <Grid container xs={12} className={classes.root}>
      <Grid
        container
        xs={12}
        direction="column"
        justify="center"
        alignItems="center"
      >
        <Typography variant="h3" className={classes.suheading}>
          Using Dominion
        </Typography>
        <Grid item xs={8} sm={4} xl={4} style={{ paddingTop: '1rem' }}>
          <Typography variant="caption" className={classes.caption}>
            Lorem ipsum dolor sit amet, nec partem definitionem at, vix eu alii
            timeam, vel falli appetere ut. Lorem ipsum dolor sit amet, nec
            partem definitionem at, vix eu alii timeam, vel falli appetere ut.
          </Typography>

          <Grid item className={classes.buttonGrid}>
            <a href="/example">
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
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Video);
