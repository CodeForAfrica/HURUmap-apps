import React from 'react';
import { Grid, Typography } from '@material-ui/core';

function Footer() {
  return (
    <Grid
      container
      direction="column"
      justify="center"
      alignItems="center"
      style={{ paddingTop: '1rem' }}
    >
      <Typography variant="title">Footer Section</Typography>
    </Grid>
  );
}

export default Footer;
