import React from 'react';
import PropTypes from 'prop-types';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import withWidth from '@material-ui/core/withWidth';

const styles = theme => ({
  root: {
    width: '100%',
    minWidth: '100%',
    [theme.breakpoints.up('md')]: {
      width: '17.875rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '18.5rem'
    }
  },
  heading: {
    width: '16rem'
  }
});

function Header({ classes }) {
  return (
    <div className={classes.root}>
      <Typography variant="h2" className={classes.heading}>
        About Dominion
      </Typography>
    </div>
  );
}

Header.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withWidth()(withStyles(styles)(Header));
