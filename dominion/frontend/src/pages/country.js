import React from 'react';
import PropTypes from 'prop-types';
import { Grid, Typography } from '@material-ui/core';
import DocumentHead from '../component/DocumentHead/index';

function Country({ url }) {
  return (
    <Grid>
      <DocumentHead url={url} />
      <Typography variant="title">Country Page</Typography>
    </Grid>
  );
}

Country.propTypes = {
  url: PropTypes.string
};

export default Country;
