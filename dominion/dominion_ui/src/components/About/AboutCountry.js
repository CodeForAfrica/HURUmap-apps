import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Header from './Header';
import Info, { InfoSubtitle, InfoBody } from './Info';
import Land from './Land';

import land from '../../assets/images/hero-image-3.png';
import content from './Data';

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

function AboutCountry({ classes, dominion }) {
  const { selectedCountry = {} } = dominion;
  const info = content[selectedCountry.slug] || {
    intro: 'Not found',
    other: 'Not found'
  };
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
          <InfoSubtitle>{info.intro}</InfoSubtitle>
          <InfoBody>{info.other}</InfoBody>
        </Info>
      </Grid>
      <Grid item>
        <Land imgSrc={land} />
      </Grid>
    </Grid>
  );
}

AboutCountry.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  dominion: PropTypes.shape({}).isRequired
};

export default withStyles(styles)(AboutCountry);
