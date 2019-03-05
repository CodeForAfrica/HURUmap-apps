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
    textAlign: 'right',
    width: '100%',
    padding: theme.spacing.unit * 5,
    [theme.breakpoints.down('md')]: {
      display: 'none'
    }
  },
  mapImage: {
    display: 'block',
    paddingRight: theme.spacing.unit * 4
  },
  lineSeparator: {
    display: 'inline-block',
    borderLeft: '1px solid #fff',
    marginTop: theme.spacing.unit,
    marginBottom: theme.spacing.unit * 8,
    height: '4rem'
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
        <div className={classes.lineSeparator} />
        02
      </Typography>
    </div>
  );
}

HeroMap.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(HeroMap);
