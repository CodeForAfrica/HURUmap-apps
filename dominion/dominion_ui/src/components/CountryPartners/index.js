import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import PartnerContent from './PartnerContent';

import cfa from '../../assets/images/logos/codeforafrica.png';
import datazetu from '../../assets/images/logos/datazetu.png';
import twaweza from '../../assets/images/logos/twaweza.png';

const styles = theme => ({
  root: {
    flexRow: 1,
    padding: '2rem'
  },
  img: {
    height: '100%',
    maxHeight: '6rem',
    maxWidth: '30vw',
    [theme.breakpoints.up('md')]: {
      width: 'auto',
      maxWidth: '10rem'
    }
  },
  imageGrid: {
    padding: '1rem',
    [theme.breakpoints.up('md')]: {
      padding: '2rem 1rem'
    }
  },
  logoGrid: {
    padding: '2rem',
    [theme.breakpoints.up('md')]: {
      padding: 0
    }
  }
});

function CountryPartners({ classes }) {
  return (
    <Grid
      container
      direction="row"
      justify="center"
      alignItems="center"
      className={classes.root}
    >
      <Grid item xs={12} sm={4}>
        <PartnerContent
          title="Our Partners"
          description="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        />
      </Grid>

      <Grid
        item
        xs={12}
        sm={8}
        spacing={24}
        container
        direction="row"
        justify="center"
        alignItems="center"
        className={classes.logoGrid}
      >
        {' '}
        <Grid item className={classes.imageGrid}>
          <img src={cfa} alt="Code for Africa" className={classes.img} />
        </Grid>
        <Grid item className={classes.imageGrid}>
          <img src={datazetu} alt="Data Zetu" className={classes.img} />
        </Grid>
        <Grid item className={classes.imageGrid}>
          <img src={twaweza} alt="Twaweza" className={classes.img} />
        </Grid>
      </Grid>
    </Grid>
  );
}

CountryPartners.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(CountryPartners);
