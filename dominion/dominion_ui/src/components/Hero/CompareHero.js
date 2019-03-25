import React from 'react';
import { PropTypes } from 'prop-types';
import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import ProfileHero from './ProfileHero';

const styles = {
  root: {
    flexGrow: 1
  }
};

function CompareHero({ classes, dominion, profileOne, profileTwo }) {
  return (
    <Grid container className={classes.root}>
      <ProfileHero dominion={dominion} profile={profileOne} />
      <ProfileHero dominion={dominion} profile={profileTwo} />
    </Grid>
  );
}
CompareHero.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  dominion: PropTypes.shape({}).isRequired,
  profileOne: PropTypes.shape({}).isRequired,
  profileTwo: PropTypes.shape({}).isRequired
};

export default withStyles(styles)(CompareHero);
