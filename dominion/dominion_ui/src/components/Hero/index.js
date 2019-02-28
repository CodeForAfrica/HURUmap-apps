import React from 'react';
import { Grid } from '@material-ui/core';
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';
import Hero from './HomeHero';
import background from '../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: theme.spacing.unit * 4,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  }
});

function HomeHero({ classes }) {
  return (
    <Grid container item xs={12} className={classes.root}>
      <Hero />
    </Grid>
  );
}

HomeHero.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(HomeHero);
