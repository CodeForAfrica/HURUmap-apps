import React from 'react';
import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import herobg from '../../../assets/images/bg/herobg.png';
import HeroContent from './HeroContent';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${herobg})`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: 'center',
    backgroundSize: 'auto',
    height: '100vh',
    [theme.breakpoints.up('lg')]: {
      height: '60vh',
      margin: '2rem'
    }
  }
});

function Jumbotron({ classes }) {
  return (
    <Grid className={classes.root}>
      <HeroContent />
    </Grid>
  );
}

export default withStyles(styles)(Jumbotron);
