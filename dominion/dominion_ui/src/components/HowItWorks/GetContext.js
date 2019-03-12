import React from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';

import Content from './Content';

const styles = theme => ({
  description: {
    [theme.breakpoints.up('md')]: {
      width: '8.578125rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      width: '11.4375rem' // 183px / 16
    }
  }
});

function GetContextContent({ classes }) {
  return (
    <Content
      title="03. Get Context"
      description="Pre-computed statistics are presented alongside each data point so you
      can see how each place fits into a large context."
      classes={{ description: classes.description }}
    />
  );
}

GetContextContent.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(GetContextContent);
