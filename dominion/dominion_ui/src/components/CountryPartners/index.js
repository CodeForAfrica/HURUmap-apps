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
    [theme.breakpoints.down('md')]: {
      padding: '2rem'
    }
  }
});

function CountryPartners({ classes }) {
  return (
    <Grid
      xs={12}
      container
      direction="row"
      justify="center"
      alignItems="center"
      className={classes.root}
    >
      <PartnerContent
        title="Our Partners"
        description="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
      />

      <Grid
        xs={12}
        sm={10}
        md={8}
        spacing={24}
        container
        direction="row"
        justify="center"
        alignItems="center"
        className={classes.logoGrid}
      >
        {' '}
        <Grid item className={classes.imgGrid}>
          <img src={cfa} alt="Code for Africa" className={classes.img} />
        </Grid>
        <Grid item className={classes.imgGrid}>
          <img src={datazetu} alt="Data Zetu" className={classes.img} />
        </Grid>
        <Grid item className={classes.imgGrid}>
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
