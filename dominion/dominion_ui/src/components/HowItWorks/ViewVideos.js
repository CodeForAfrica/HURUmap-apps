import React from 'react';
import PropTypes from 'prop-types';

import { Button, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import blackArrow from '../../assets/images/icons/black-combined-shape.svg';

const styles = theme => ({
  root: {
    [theme.breakpoints.up('md')]: {
      width: '32.1719rem', // .75 of lg
      textAlign: 'right'
    },
    [theme.breakpoints.up('lg')]: {
      width: '41.375rem' // (188 + 36 + 192 + 37 + 209)px / 16
    }
  },
  button: {
    padding: 0,
    fontWeight: 700
  },
  arrow: {
    paddingLeft: '1rem'
  }
});

function ViewVideos({ classes, onClick }) {
  return (
    <div className={classes.root}>
      <Button className={classes.button} onClick={onClick}>
        <Typography variant="h6">
          View videos
          <img src={blackArrow} alt="Videos" className={classes.arrow} />
        </Typography>
      </Button>
    </div>
  );
}

ViewVideos.propTypes = {
  classes: PropTypes.shape().isRequired,
  onClick: PropTypes.func.isRequired
};

export default withStyles(styles)(ViewVideos);
