import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography } from '@material-ui/core';
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
    display: 'none',
    [theme.breakpoints.up('md')]: {
      display: 'inherit'
    }
  },
  mapImage: {
    display: 'block',
    paddingRight: theme.spacing.unit * 8
  },
  lineSeparator: {
    display: 'inline-block',
    borderLeft: '1px solid #fff',
    marginTop: theme.spacing.unit,
    marginBottom: theme.spacing.unit * 8,
    height: '4rem'
  }
});

function HomeHeroMap({ classes }) {
  return (
    <Grid
      xs={12}
      sm={12}
      md={4}
      lg={4}
      xl={4}
      item
      container
      direction="row"
      justify="flex-end"
      alignItems="center"
      className={classes.mapSection}
    >
      <Typography
        variant="fontSmallDefault"
        className={classes.verticalAlignText}
      >
        <img src={map} alt="Country Map" className={classes.mapImage} />
        South Africa &nbsp;&nbsp;
        <div className={classes.lineSeparator} />
        02
      </Typography>
    </Grid>
  );
}

HomeHeroMap.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(HomeHeroMap);
