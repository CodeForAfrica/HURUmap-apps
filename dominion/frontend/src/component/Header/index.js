import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Nav from './Nav';
import Jumbotron from './Hero/Jumbotron';

import background from '../../assets/images/bg/background.png';

const styles = () => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  }
});
function Header({ classes }) {
  return (
    <Grid container item xs={12} className={classes.root}>
      <Nav />
      <Jumbotron />
    </Grid>
  );
}

Header.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Header);
