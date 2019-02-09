import React from 'react';
import PropTypes from 'prop-types';

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
    },
    [theme.breakpoints.down('md')]: {
      backgroundPosition: 'right',
      backgroundSize: 'auto'
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

Jumbotron.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Jumbotron);
