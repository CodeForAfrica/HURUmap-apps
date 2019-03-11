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
      width: '19.25rem' // 308px /16
    }
  },
  heading: {
    width: '16rem' // Force the heading to break
  }
});

function Header({ classes, children }) {
  return (
    <div className={classes.root}>
      <Typography variant="h2" className={classes.heading}>
        {children}
      </Typography>
    </div>
  );
}

Header.propTypes = {
  classes: PropTypes.shape().isRequired,
  children: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Header));
