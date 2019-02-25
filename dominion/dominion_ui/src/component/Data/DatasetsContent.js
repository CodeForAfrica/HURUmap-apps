import React from 'react';
import PropTypes from 'prop-types';

import Check from '@material-ui/icons/Check';
import { withStyles } from '@material-ui/core/styles';

import Content from './Content';

const styles = theme => ({
  root: {
    marginTop: '3rem',
    [theme.breakpoints.up('md')]: {
      marginTop: 0
    }
  }
});

function DataSetsContent({ classes }) {
  return (
    <div className={classes.root}>
      <Content
        title="openAFRICA"
        contentCount="3,152"
        contentType="Datasets"
        description="
            openAFRICA aims to be the largest independent repository of open
            data on the African continent.
      "
      >
        <Check size="small" style={{ color: 'black' }} />
      </Content>
    </div>
  );
}

DataSetsContent.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(DataSetsContent);
