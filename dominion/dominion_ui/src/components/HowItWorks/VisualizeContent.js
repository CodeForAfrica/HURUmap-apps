import React from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';

import Content from './Content';

const styles = theme => ({
  description: {
    [theme.breakpoints.up('md')]: {
      width: '8.71875rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      width: '11.625rem' // 186px / 16
    }
  }
});

function FactsContent({ classes }) {
  return (
    <Content
      title="02. Visualize"
      description="Our library of charts gives you insight into data from places you
    research. Look for them on profile pages. You can embed the charts on
    your own site."
      classes={{ description: classes.description }}
    />
  );
}

FactsContent.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(FactsContent);
