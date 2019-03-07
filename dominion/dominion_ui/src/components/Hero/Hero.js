import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import arrow from '../../assets/images/icons/combined-shape.svg';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: '0 9.375rem',
    [theme.breakpoints.down('md')]: {
      padding: '0 3.125rem'
    },
    [theme.breakpoints.down('sm')]: {
      padding: '0'
    }
  },
  heroContentGrid: {
    flexGrow: 1,
    [theme.breakpoints.up('lg')]: {
      height: '100vh'
    },
    [theme.breakpoints.up('md')]: {
      height: '80vh'
    },
    [theme.breakpoints.down('sm')]: {
      margin: 0
    }
  },
  titleTextGrid: {
    zIndex: '100',
    color: 'white',
    [theme.breakpoints.down('sm')]: {
      margin: '2rem',
      marginTop: 0
    }
  },
  text: {
    color: 'white',
    width: '90%',
    [theme.breakpoints.down('sm')]: {
      fontSize: '3rem',
      width: '60%'
    }
  },
  body2: {
    color: 'white',
    textAlign: 'left',
    width: '50%',
    paddingTop: '2rem',
    [theme.breakpoints.down('sm')]: {
      width: '100%'
    }
  },
  button: {
    textTransform: 'none',
    fontWeight: 800,
    fontSize: theme.typography.subtitle1.fontSize,
    color: 'white',
    height: '4rem',
    width: '100%',
    border: '2px solid white',
    paddingLeft: '4rem',
    paddingRight: '4rem',
    [theme.breakpoints.up('sm')]: {
      width: 'unset'
    }
  },
  buttonArrow: {
    marginLeft: -theme.spacing.unit * 4,
    [theme.breakpoints.down('sm')]: {
      display: 'none'
    }
  }
});

function HeroTitleGridComponent({ classes, children }) {
  return (
    <Grid item sm={12} md={8} lg={8} xl={6} className={classes.titleTextGrid}>
      {children}
    </Grid>
  );
}

HeroTitleGridComponent.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired
};

const HeroTitleGrid = withStyles(styles)(HeroTitleGridComponent);

function HeroTitleComponent({ classes, children }) {
  return (
    <Typography variant="h1" className={classes.text}>
      {children}
    </Typography>
  );
}

HeroTitleComponent.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired
};

const HeroTitle = withStyles(styles)(HeroTitleComponent);

function HeroDescriptionComponent({ classes, children }) {
  return (
    <Typography variant="body1" className={classes.body2}>
      {children}
    </Typography>
  );
}

HeroDescriptionComponent.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired
};

const HeroDescription = withStyles(styles)(HeroDescriptionComponent);

function HeroButtonComponent({ classes, children, onClick }) {
  return (
    <Grid container sm={12} alignItems="center" style={{ paddingTop: '2rem' }}>
      <Button
        variant="outlined"
        onClick={onClick}
        color="white"
        className={classes.button}
      >
        {children}
      </Button>
      <img src={arrow} alt="Select Arrow" className={classes.buttonArrow} />
    </Grid>
  );
}

HeroButtonComponent.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired,
  onClick: PropTypes.func.isRequired
};

const HeroButton = withStyles(styles)(HeroButtonComponent);

function HeroComponent({ classes, children }) {
  return (
    <Grid container item xs={12} className={classes.root}>
      <Grid container alignItems="center" className={classes.heroContentGrid}>
        {children}
      </Grid>
    </Grid>
  );
}

HeroComponent.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired
};

const Hero = withStyles(styles)(HeroComponent);

export default Hero;

export { HeroTitle, HeroDescription, HeroButton, HeroTitleGrid };
