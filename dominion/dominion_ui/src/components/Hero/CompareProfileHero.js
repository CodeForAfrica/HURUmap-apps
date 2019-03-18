import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Iframe from '../IFrame';

const styles = () => ({
  root: {
    flexGrow: 1,
    float: '50%',
    padding: '0px',
    margin: '0px',
    border: '0px',
    overflowY: 'hidden'
  },
  iframeGrid: { backgroundColor: 'white' },
  iframeLeft: { left: '50%', borderLeft: '5px solid #f7f8f3', height: '834px' },
  iframeRight: {
    left: '50%',
    borderLeft: '5px solid #f7f8f3',
    height: '834px'
  },
  clear: { clear: 'both' }
});

function ComparePageProfile({ classes }) {
  return (
    <Grid className={classes.root}>
      <Grid className={classes.iframeGrid}>
        <Iframe
          className={classes.iframeLeft}
          scrolling="no"
          src="{% url 'geography_detail' geography_id=geo_id1 %}?h2h=true&release={{geo1_release_year}}"
        />
        <Iframe
          className={classes.iframeRight}
          scrolling="no"
          src="{% url 'geography_detail' geography_id=geo_id2 %}?h2h=true&release={{geo2_release_year}}"
        />
        <div className={classes.clear} />
      </Grid>
    </Grid>
  );
}

ComparePageProfile.propTypes = {
  classes: PropTypes.shape().isRequired
};
export default withStyles(styles)(ComparePageProfile);
