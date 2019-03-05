import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Header from './Header';
import Info, { InfoSubtitle, InfoBody } from './Info';
import Land from './Land';

import { AppContextConsumer } from '../../AppContext';

const styles = {
  root: {
    flexGrow: 1,
    padding: '2rem',
    backgroundColor: '#fff'
  },
  header: {
    width: '100%',
    margin: '2rem 0'
  },
  info: {},
  land: {}
};

function AboutCountry({ classes }) {
  return (
    <AppContextConsumer>
      {({ selectedCountry }) => (
        <Grid
          container
          direction="row"
          className={classes.root}
          justify="centre"
          alignItems="flex-start"
        >
          <Header>
            About <br />
            {selectedCountry.name}
          </Header>
          <Info>
            <InfoSubtitle>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
              enim ad minim veniam, quis nostrud exercitation ullamco laboris
              nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
              reprehenderit in voluptate velit esse cillum dolore eu fugiat
              nulla pariatur.
            </InfoSubtitle>
            <InfoBody>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
              enim ad minim veniam, quis nostrud exercitation ullamco laboris
              nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
              reprehenderit in voluptate velit esse cillum dolore eu fugiat
              nulla pariatur.
            </InfoBody>
          </Info>
          <Land />
        </Grid>
      )}
    </AppContextConsumer>
  );
}

AboutCountry.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(AboutCountry);
