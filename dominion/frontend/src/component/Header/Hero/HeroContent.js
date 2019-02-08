import React from 'react';
import { Grid, Typography, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import map from '../../../assets/images/bg/map.png';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  text: { color: 'white' },
  body2: {
    color: 'white',
    textAlign: 'left',
    width: '70%',
    paddingTop: '2rem'
  },
  titleTextGrid: { color: 'white' },
  button: {
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
      <Grid item xs={8} className={classes.titleTextGrid}>
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
              Select Country
            </Button>
          </a>
        </Grid>
      </Grid>
      <Grid
        xs={4}
        item
        container
        direction="row"
        justify="space-around"
        alignItems="center"
        style={{ color: 'white', paddingLeft: '5rem' }}
      >
        <img src={map} alt="Country Map" />
        <Grid
          style={{
            writingMode: 'vertical-lr',
            textOrientation: ' sideways-right',
            color: 'white'
          }}
        >
          <Typography variant="body2" style={{ color: 'white' }}>
            South Africa
            <hr size="30" /> 02
          </Typography>
        </Grid>
      </Grid>
    </Grid>
  );
}

export default withStyles(styles)(HeroContent);
