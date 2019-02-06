import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import HeaderNav from './HeaderNav';

import background from '../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    [theme.breakpoints.up('md')]: {
      height: '100vh'
    }
  }
});
function Header({ classes }) {
  return (
    <Grid container xs={12} className={classes.root}>
      <HeaderNav />
    </Grid>
  );
}

Header.propTypes = {
  classes: PropTypes.isRequired
};
export default withStyles(styles)(Header);
