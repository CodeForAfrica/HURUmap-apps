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
    [theme.breakpoints.down('sm')]: {
      margin: 0
    },
    [theme.breakpoints.up('md')]: {
      height: '70vh'
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
  title: {
    color: 'white',
    width: '90%',
    [theme.breakpoints.down('sm')]: {
      fontSize: '3rem',
      width: '60%'
    }
  },
  titleFontSmall: {
    fontSize: '3.125em'
  },
  titleWordBreak: {
    width: 'min-content'
  },
  detail: {
    color: 'white',
    fontFamily: 'Lora',
    fontSize: '1.875em',
    fontWeight: 'normal',
    fontStyle: 'normal',
    fontStretch: 'normal',
    lineHeight: 'normal',
    letterSpacing: '0.056em'
  },
  detailFontSmall: {
    fontSize: '1.25em'
  },
  detailLabel: {
    color: '#8d8d8c',
    fontFamily: 'Montserrat',
    fontSize: '0.688em',
    fontWeight: 500,
    fontStyle: 'normal',
    fontStretch: 'normal',
    lineHeight: 2.09,
    letterSpacing: 'normal'
  },
  body2: {
    color: 'white',
    textAlign: 'left',
    width: '50%',
    paddingTop: '2rem',
    opacity: '0.5',
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

function HeroTitleGridComponent({ classes, children, quater }) {
  return (
    <Grid
      item
      xs={12}
      sm={12}
      md={quater ? 4 : 8}
      lg={quater ? 4 : 8}
      xl={quater ? 4 : 6}
      className={classes.titleTextGrid}
    >
      {children}
    </Grid>
  );
}

HeroTitleGridComponent.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired,
  quater: PropTypes.bool.isRequired
};

const HeroTitleGrid = withStyles(styles)(HeroTitleGridComponent);

function HeroTitleComponent({ classes, children, breakWord, small }) {
  return (
    <Typography
      variant="h1"
      className={`${classes.title} ${
        breakWord ? classes.titleWordBreak : null
      } ${small ? classes.titleFontSmall : null}`}
    >
      {children}
    </Typography>
  );
}

HeroTitleComponent.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired,
  breakWord: PropTypes.bool.isRequired,
  small: PropTypes.bool.isRequired
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

function HeroDetailComponent({ classes, children, label, small }) {
  return (
    <div style={{ marginTop: '0.313em' }}>
      <Typography
        variant="h2"
        className={`${classes.detail} ${
          small ? classes.detailFontSmall : null
        }`}
      >
        {children}
      </Typography>
      {label ? (
        <Typography variant="h3" className={classes.detailLabel}>
          {label}
        </Typography>
      ) : null}
    </div>
  );
}

HeroDetailComponent.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired,
  label: PropTypes.string.isRequired,
  small: PropTypes.bool.isRequired
};

const HeroDetail = withStyles(styles)(HeroDetailComponent);

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

export { HeroTitle, HeroDescription, HeroButton, HeroTitleGrid, HeroDetail };
