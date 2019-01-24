import React from 'react';
import { Grid, Typography } from '@material-ui/core';

function Partners() {
  return (
    <Grid container direction="column" justify="center" alignItems="center">
      <Typography variant="headline">Dominion Setup</Typography>
      <Grid style={{ paddingTop: '2rem' }}>
        <Typography variant="title">Partner&#39;s Logos</Typography>
      </Grid>
    </Grid>
  );
}

export default Partners;
