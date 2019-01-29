import React from 'react';
import PropTypes from 'prop-types';
import { Typography } from '@material-ui/core';
import DocumentHead from '../component/DocumentHead/Index';

function Country({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Typography variant="h6">Country Page</Typography>
    </React.Fragment>
  );
}

Country.propTypes = {
  url: PropTypes.string.isRequired
};

export default Country;
