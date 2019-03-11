import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = () => ({
  root: {
    paddingBottom: '3rem'
  },
  descriptionText: {
    marginRight: '3rem',
    paddingTop: '1rem'
  }
});

function HowItWorksContent({ classes, title, description }) {
  return (
    <Grid item xs={12} sm={12} md={4} lg={4} xl={4} className={classes.root}>
      <Typography variant="h4">{title} </Typography>
      <Typography variant="body2" className={classes.descriptionText}>
        {description}
      </Typography>
    </Grid>
  );
}

HowItWorksContent.propTypes = {
  classes: PropTypes.shape().isRequired,
  title: PropTypes.string.isRequired,
  description: PropTypes.string.isRequired
};

export default withStyles(styles)(HowItWorksContent);
