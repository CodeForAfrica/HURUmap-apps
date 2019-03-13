import React from 'react';
import PropTypes from 'prop-types';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = () => ({
  root: {
    flexGrow: 1
  },
  title: {
    paddingBottom: '1rem'
  }
});

function PartnerText({ classes, title, description }) {
  return (
    <div className={classes.root}>
      <Typography variant="h4" className={classes.title}>
        {title}
      </Typography>
      <Typography variant="body1">{description}</Typography>
    </div>
  );
}

PartnerText.propTypes = {
  classes: PropTypes.shape().isRequired,
  title: PropTypes.string.isRequired,
  description: PropTypes.string.isRequired
};

export default withStyles(styles)(PartnerText);
