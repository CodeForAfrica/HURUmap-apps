import React from 'react';
import PropTypes from 'prop-types';
import { withRouter } from 'react-router-dom';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import DocumentHead from '../component/DocumentHead';

function NotFound({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Typography variant="h1">
        404 OOPS! WE CAN&apos;T SEEM TO FIND THE PAGE YOU ARE LOOKING FOR.
      </Typography>
    </React.Fragment>
  );
}

NotFound.propTypes = {
  url: PropTypes.string.isRequired
};

export default withRouter(withStyles(NotFound));
