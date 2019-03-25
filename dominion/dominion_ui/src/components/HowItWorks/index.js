import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Hidden } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import databg from '../../assets/images/bg/databg.png';

import Map from './Map';
import Description from './Description';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: '2rem 0',
    paddingLeft: '1.875rem', // 30px / 16
    backgroundColor: '#fff',
    backgroundImage: `url(${databg})`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: 'top right',
    backgroundSize: '80% 70%',
    [theme.breakpoints.up('md')]: {
      paddingLeft: 0, // 30px / 16
      backgroundPosition: '0 4.5rem', // Match padding + highlight height
      backgroundSize: '68% 100%'
    },
    [theme.breakpoints.up('xl')]: {
      backgroundSize: '65% 100%'
    }
  },
  description: {
    [theme.breakpoints.up('md')]: {
      paddingTop: '4.625rem', // 74px / 16
      paddingLeft: '4.625rem' // 74px / 16
    }
  }
});

function HowItWorks({ classes, dominion }) {
  return (
    <Grid
      container
      className={classes.root}
      justify="center"
      alignItems="flex-start"
    >
      <Hidden smDown>
        <Grid item>
          <Map />
        </Grid>
      </Hidden>

      <Grid item className={classes.description}>
        <Description dominion={dominion} />
      </Grid>
    </Grid>
  );
}

HowItWorks.propTypes = {
  classes: PropTypes.shape().isRequired,
  dominion: PropTypes.shape({}).isRequired
};

export default withStyles(styles)(HowItWorks);
