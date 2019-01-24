import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { withRouter } from 'react-router-dom';

import { Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import DocumentHead from '../component/DocumentHead';

class NotFound extends Component {
  render() {
    const { url } = this.props;

    return (
      <Grid>
        <DocumentHead url={url} />
        <Typography variant="h1">
          404 OOPS! WE CAN&apos;T SEEM TO FIND THE PAGE YOU ARE LOOKING FOR.
        </Typography>
      </Grid>
    );
  }
}

NotFound.propTypes = {
  url: PropTypes.string
};

export default withRouter(withStyles(NotFound));
