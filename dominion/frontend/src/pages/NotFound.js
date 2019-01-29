import React from 'react';
import PropTypes from 'prop-types';
import { withRouter } from 'react-router';

import { Typography } from '@material-ui/core';

import DocumentHead from '../component/DocumentHead/Index';

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

export default withRouter(NotFound);
