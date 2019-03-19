import React from 'react';
import PropTypes from 'prop-types';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = () => ({
  root: {},
  description: {
    paddingTop: '0.5625rem', // 9px / 16,
    opacity: 0.6
  }
});

function Content({ classes, title, description }) {
  return (
    <div className={classes.root}>
      <Typography variant="h5">{title} </Typography>
      <Typography variant="body2" className={classes.description}>
        {description}
      </Typography>
    </div>
  );
}

Content.propTypes = {
  classes: PropTypes.shape().isRequired,
  title: PropTypes.string.isRequired,
  description: PropTypes.string.isRequired
};

export default withStyles(styles)(Content);
