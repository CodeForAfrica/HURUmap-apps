import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import herobg from '../../assets/images/bg/hero_bg.png';
import arrow from '../../assets/images/icons/combined-shape.svg';
import map from '../../assets/images/bg/hero_map.png';
import background from '../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: theme.spacing.unit * 4,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  heroContentGrid: {
    flexGrow: 1,
    backgroundImage: `url(${herobg})`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: 'center',
    backgroundSize: 'auto',
    height: '100vh',
    [theme.breakpoints.up('lg')]: {
      height: '60vh',
      paddingLeft: theme.spacing.unit * 14.5
    },
    [theme.breakpoints.down('md')]: {
      backgroundPosition: 'right',
      backgroundSize: 'auto'
    }
  },
  titleTextGrid: {
    color: 'white',
    marginTop: theme.spacing.unit * 6.5,
    [theme.breakpoints.up('lg')]: {
      paddingLeft: theme.spacing.unit * 9
    },
    [theme.breakpoints.down('sm')]: {
      position: 'absolute',
      top: '4rem',
      margin: '2rem'
    }
  },
  text: {
    color: 'white',
    width: '90%',
    [theme.breakpoints.down('sm')]: {
      fontSize: '3rem'
    }
  },
  body2: {
    color: 'white',
    textAlign: 'left',
    width: '50%',
    paddingTop: '2rem'
  },
  button: {
    textTransform: 'none',
    fontWeight: 800,
    fontSize: theme.typography.subtitle1.fontSize,
    color: 'white',
    border: '2px solid white',
    [theme.breakpoints.up('lg')]: {
      height: '4rem',
      paddingLeft: '4rem',
      paddingRight: '4rem'
    }
  },
  buttonArrow: {
    marginLeft: -theme.spacing.unit * 4
  },
  buttonLink: {
    textDecoration: 'none'
  },
  verticalAlignText: {
    color: 'white',
    writingMode: 'vertical-lr',
    textOrientation: ' sideways-right'
  },
  mapSection: {
    color: 'white',
    //    paddingLeft: '5rem',
    [theme.breakpoints.down('sm')]: {
      visibility: 'hidden'
    }
  }
});

function Hero({ classes }) {
  return (
    <Grid container item xs={12} className={classes.root}>
      <Grid
        container
        direction="row"
        spacing={40}
        justify="space-between"
        className={classes.heroContentGrid}
      >
        <Grid
          item
          xs={8}
          md={8}
          lg={8}
          xl={6}
          className={classes.titleTextGrid}
        >
          <Typography variant="h1" className={classes.text}>
            Discover the stories behind the data.
          </Typography>

          <Typography item xs={4} variant="body1" className={classes.body2}>
            Dominion makes data available to help add context and authority to
            public discourse and policy-making on vital issues of land
            ownership.
          </Typography>
          <Grid style={{ paddingTop: '2rem' }}>
            <a href="/#" className={classes.buttonLink}>
              <Button
                variant="outlined"
                color="white"
                className={classes.button}
              >
                Select a Country
              </Button>
              <img
                src={arrow}
                alt="Select Country"
                className={classes.buttonArrow}
              />
            </a>
          </Grid>
        </Grid>
        <Grid
          xs={4}
          md={4}
          lg={4}
          xl={5}
          item
          container
          direction="row"
          justify="space-around"
          alignItems="center"
          className={classes.mapSection}
        >
          <img src={map} alt="Country Map" />
          <Typography
            variant="fontSmallDefault"
            className={classes.verticalAlignText}
          >
            South Africa &nbsp;&nbsp;
            <div
              style={{ display: 'inline-block', borderLeft: '1px solid #fff' }}
            >
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{' '}
            </div>
          </Typography>
        </Grid>
      </Grid>
    </Grid>
  );
}

Hero.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Hero);
