import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import classNames from 'classnames';

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
  h2hTitleGrid: {
    order: 2,
    paddingTop: theme.spacing.unit,
    margin: 0,
    marginTop: '2rem'
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
    fontSize: '0.688em',
    fontWeight: 500,
    lineHeight: 2.09
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
  buttonGrid: {
    paddingTop: '2rem'
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
  detailComponent: {
    paddingTop: theme.spacing.unit,
    paddingBottom: theme.spacing.unit
  },
  buttonArrow: {
    marginLeft: -theme.spacing.unit * 4,
    [theme.breakpoints.down('sm')]: {
      display: 'none'
    }
  }
});

function HeroTitleGridComponent({ classes, children, quater, head2head }) {
  return (
    <Grid
      item
      xs={12}
      sm={12}
      md={quater ? 4 : 8}
      lg={quater ? 4 : 8}
      xl={quater ? 4 : 6}
      className={classNames(classes.titleTextGrid, {
        [classes.h2hTitleGrid]: head2head
      })}
    >
      {children}
    </Grid>
  );
}

HeroTitleGridComponent.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  quater: PropTypes.bool,
  head2head: PropTypes.bool
};

HeroTitleGridComponent.defaultProps = {
  quater: false,
  head2head: false
};

const HeroTitleGrid = withStyles(styles)(HeroTitleGridComponent);

function HeroTitleComponent({ classes, children, breakWord, small }) {
  return (
    <Typography
      variant="h1"
      className={classNames(
        classes.title,
        { [classes.titleWordBreak]: breakWord },
        { [classes.titleFontSmall]: small }
      )}
    >
      {children}
    </Typography>
  );
}

HeroTitleComponent.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  children: PropTypes.string.isRequired,
  breakWord: PropTypes.bool,
  small: PropTypes.bool
};

HeroTitleComponent.defaultProps = {
  breakWord: false,
  small: false
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
  classes: PropTypes.shape({}).isRequired,
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired
};

const HeroDescription = withStyles(styles)(HeroDescriptionComponent);

function HeroDetailComponent({ classes, children, label, small }) {
  return (
    <Grid className={classes.detailComponent}>
      <Typography
        variant="h2"
        className={classNames(classes.detail, {
          [classes.detailFontSmall]: small
        })}
      >
        {children}
      </Typography>
      {label && (
        <Typography variant="h3" className={classes.detailLabel}>
          {label}
        </Typography>
      )}
    </Grid>
  );
}

HeroDetailComponent.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  children: PropTypes.string.isRequired,
  label: PropTypes.string.isRequired,
  small: PropTypes.bool.isRequired
};

const HeroDetail = withStyles(styles)(HeroDetailComponent);

function HeroButtonComponent({ classes, children, onClick }) {
  return (
    <Grid
      container
      item
      sm={12}
      alignItems="center"
      className={classes.buttonGrid}
    >
      <Button variant="outlined" onClick={onClick} className={classes.button}>
        {children}
      </Button>
      <img src={arrow} alt="Select Arrow" className={classes.buttonArrow} />
    </Grid>
  );
}

HeroButtonComponent.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  onClick: PropTypes.func.isRequired
};

const HeroButton = withStyles(styles)(HeroButtonComponent);

function HeroComponent({ classes, children }) {
  return (
    <Grid container className={classes.root}>
      <Grid container alignItems="center" className={classes.heroContentGrid}>
        {children}
      </Grid>
    </Grid>
  );
}

HeroComponent.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired
};

const Hero = withStyles(styles)(HeroComponent);

export default Hero;

export { HeroTitle, HeroDescription, HeroButton, HeroTitleGrid, HeroDetail };
