import React from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';

import Content from './Content';

const styles = theme => ({
  description: {
    [theme.breakpoints.up('md')]: {
      width: '7.734375rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      width: '10.3125rem' // 165px / 16
    }
  }
});

function FindFactsContent({ classes }) {
  return (
    <Content
      title="01. Find Facts"
      description="Population and financial figures are broken down by category: Elections,
    Demographics, Service Delivery, Economics, and Education."
      classes={{ description: classes.description }}
    />
  );
}

FindFactsContent.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(FindFactsContent);
