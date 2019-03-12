import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Header from './Header';
import Info, { InfoSubtitle, InfoBody } from './Info';
import Land from './Land';

import land from '../../assets/images/hero-image-3.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: '#fff',
    justifyContent: 'flex-start',
    alignContent: 'space-between',
    [theme.breakpoints.up('md')]: {
      justifyContent: 'space-evenly',
      padding: '50px'
    }
  }
});

function AboutCountry({ classes }) {
  const selectedCountry = window.selected_country;
  return (
    <Grid
      container
      direction="row"
      className={classes.root}
      justify="space-evenly"
      alignItems="flex-start"
    >
      <Grid item>
        <Header>
          About <br />
          {selectedCountry.name}
        </Header>
      </Grid>
      <Grid item>
        <Info>
          <InfoSubtitle>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
            ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
            aliquip ex ea commodo consequat. Duis aute irure dolor in
            reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
            pariatur.
          </InfoSubtitle>
          <InfoBody>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
            ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
            aliquip ex ea commodo consequat. Duis aute irure dolor in
            reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
            pariatur.
          </InfoBody>
        </Info>
      </Grid>
      <Grid item>
        <Land imgSrc={land} />
      </Grid>
    </Grid>
  );
}

AboutCountry.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(AboutCountry);
