import React from 'react';
import PropTypes from 'prop-types';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import withWidth from '@material-ui/core/withWidth';

const styles = {
  root: {
    width: 'auto',
    paddingTop: '10px'
  }
};

function Header({ classes, children }) {
  return (
    <div className={classes.root}>
      <Typography variant="h2">{children}</Typography>
    </div>
  );
}

Header.propTypes = {
  classes: PropTypes.shape().isRequired,
  children: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Header));
