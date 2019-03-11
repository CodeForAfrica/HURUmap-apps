import React from 'react';
import PropTypes from 'prop-types';

import { withWidth, Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import land from '../../assets/images/About/land.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '19.875rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '26.25rem'
    }
  },
  img: {
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '18.875rem',
      height: 'auto',

      // TODO(kilemens): There is a gap between the two components. This is a temporary fix.
      marginBottom: theme.spacing.unit * -0.5
    },
    [theme.breakpoints.up('lg')]: {
      width: '26.25rem'
    }
  },
  highlight: {
    width: '6.875rem', // 110px / 16
    height: '1.25rem', // 20px
    background: '#e7e452'
  }
});

function Land({ classes, width }) {
  const direction =
    width === 'xs' || width === 'sm' ? 'column-reverse' : 'column';
  return (
    <Grid
      container
      direction={direction}
      className={classes.root}
      justify="center"
      alignItems="flex-end"
    >
      <Grid item xs={12}>
        <img src={land} alt="land" className={classes.img} />
      </Grid>
      <Grid item xs={12}>
        <div className={classes.highlight} />
      </Grid>
    </Grid>
  );
}

Land.propTypes = {
  classes: PropTypes.shape().isRequired,
  width: PropTypes.string.isRequired
};

export default withWidth()(withStyles(styles)(Land));
