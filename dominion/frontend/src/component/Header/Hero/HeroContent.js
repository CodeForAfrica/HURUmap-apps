import React from 'react';
import { Grid, Typography, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import map from '../../../assets/images/bg/map.png';

const styles = () => ({
  root: {
    flexGrow: 1,
    position: 'absolute',
    zIndex: '100'
  },
  text: { color: 'white' },
  body2: { color: 'white', textAlign: 'left', width: '70%', paddingTop: '2rem' }
});

function HeroContent({ classes }) {
  return (
    <Grid
      container
      direction="row"
      spacing={40}
      justify="space-between"
      alignItems="center"
    >
      <Grid item xs={8} style={{ color: 'white' }}>
        <Typography variant="h1" className={classes.text}>
          Discover the stories behind the data
        </Typography>

        <Typography item xs={4} variant="body1" className={classes.body2}>
          Dominion makes data available to help add context and authority to
          public discourse and policy-making on vital issues of land ownership.
        </Typography>
        <Grid style={{ paddingTop: '4rem' }}>
          <Button color="primary" variant="outlined">
            {' '}
            Select Country
          </Button>
        </Grid>
      </Grid>
      <Grid
        item
        xs={4}
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
            color: 'white',
            height: '100px'
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
