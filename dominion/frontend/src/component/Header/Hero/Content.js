import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import map from '../../../assets/images/bg/map.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    [theme.breakpoints.up('xl')]: {
      paddingTop: '3rem',
      paddingLeft: '5rem',
      paddingRight: '5rem'
    }
  },
  text: {
    color: 'white',
    [theme.breakpoints.down('sm')]: {
      fontSize: '3rem'
    }
  },
  body2: {
    color: 'white',
    textAlign: 'left',
    width: '70%',
    paddingTop: '2rem'
  },

  titleTextGrid: {
    color: 'white',
    [theme.breakpoints.down('sm')]: {
      position: 'absolute',
      top: '4rem',
      margin: '2rem'
    }
  },
  button: {
    textTransform: 'none',
    fontWeight: 800,
    fontSize: theme.typography.subtitle1.fontSize,
    color: 'white',
    border: '2px solid white',
    [theme.breakpoints.up('lg')]: {
      height: '3.5rem',
      paddingLeft: '2rem',
      paddingRight: '2rem'
    }
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
    paddingLeft: '5rem',
    [theme.breakpoints.down('sm')]: {
      visibility: 'hidden'
    }
  }
});

function HeroContent({ classes }) {
  return (
    <Grid
      container
      direction="row"
      spacing={40}
      justify="space-between"
      alignItems="center"
      className={classes.root}
    >
      <Grid item xs={8} md={8} lg={8} xl={6} className={classes.titleTextGrid}>
        <Typography variant="h1" className={classes.text}>
          Discover the stories behind the data
        </Typography>

        <Typography item xs={4} variant="body1" className={classes.body2}>
          Dominion makes data available to help add context and authority to
          public discourse and policy-making on vital issues of land ownership.
        </Typography>
        <Grid style={{ paddingTop: '2rem' }}>
          <a href="/example" className={classes.buttonLink}>
            <Button variant="outlined" color="white" className={classes.button}>
              Select a Country
            </Button>
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
        <Grid>
          <Typography variant="body2" className={classes.verticalAlignText}>
            South Africa
          </Typography>
        </Grid>
      </Grid>
    </Grid>
  );
}

HeroContent.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(HeroContent);
