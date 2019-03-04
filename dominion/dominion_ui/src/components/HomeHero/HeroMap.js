import React from 'react';
import PropTypes from 'prop-types';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import map from '../../assets/images/bg/hero_map.png';

const styles = theme => ({
  verticalAlignText: {
    color: 'white',
    writingMode: 'vertical-lr',
    textOrientation: 'sideways-right'
  },
  mapSection: {
    color: 'white',
    padding: theme.spacing.unit * 5,
    [theme.breakpoints.down('sm')]: {
      display: 'none'
    }
  },
  mapImage: {
    display: 'block',
    paddingRight: theme.spacing.unit * 4
  }
});

function HeroMap({ classes }) {
  return (
    <div className={classes.mapSection}>
      <Typography
        variant="fontSmallDefault"
        className={classes.verticalAlignText}
      >
        <img src={map} alt="Country Map" className={classes.mapImage} />
        South Africa &nbsp;&nbsp;
        <div
          style={{
            display: 'inline-block',
            borderLeft: '1px solid #fff'
          }}
        >
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{' '}
        </div>
      </Typography>
    </div>
  );
}

HeroMap.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(HeroMap);
