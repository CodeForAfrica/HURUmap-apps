import React from 'react';
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';

import plugicon from '../../assets/images/icons/group-6.png';

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
        contentCount="11"
        contentType="Datasets"
        description="
            openAFRICA aims to be the largest independent repository of open
            data on the African continent.
      "
        link="https://africaopendata.org/group/dominion"
      >
        <img src={plugicon} alt="Plug Icon" />
      </Content>
    </div>
  );
}

DataSetsContent.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(DataSetsContent);
