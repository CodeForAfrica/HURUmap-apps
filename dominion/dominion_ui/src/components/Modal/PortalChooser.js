import React from 'react';
import PropTypes from 'prop-types';
import NumberFormat from 'react-number-format';

import { Grid, Typography, MenuList, MenuItem } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import background from '../../assets/images/bg/background.png';
import geolocate from '../../assets/images/icons/shape.svg';
import cross from '../../assets/images/icons/close.svg';
import GetLocation from './GetLocation';

const styles = theme => ({
  grid: {
    flexGrow: 1,
    width: '100vw',
    color: 'white',
    height: 600,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    [theme.breakpoints.down('sm')]: {
      height: 450
    }
  },
  countryList: {
    marginTop: theme.spacing.unit * 10,
    marginLeft: theme.spacing.unit * 4,
    [theme.breakpoints.down('sm')]: {
      marginTop: -theme.spacing.unit * 2,
      marginLeft: 0
    }
  },
  locationText: {
    color: 'white',
    fontSize: 13,
    fontWeight: 'bold',
    '&:hover': {
      color: '#e7e452'
    }
  },
  locateImage: {
    marginLeft: theme.spacing.unit * 10
  },
  listIndex: {
    [theme.breakpoints.down('sm')]: {
      display: 'none'
    }
  },
  closeText: {
    color: 'white',
    fontSize: 13,
    fontWeight: 'bold',
    marginTop: theme.spacing.unit * 10,
    [theme.breakpoints.down('sm')]: {
      marginTop: theme.spacing.unit
    }
  },
  closeSpan: {
    [theme.breakpoints.down('sm')]: {
      display: 'none'
    }
  },
  closeImage: {
    marginLeft: theme.spacing.unit * 6,
    [theme.breakpoints.down('sm')]: {
      float: 'right'
    }
  },
  browseText: {
    color: 'white',
    opacity: 0.5,
    paddingTop: theme.spacing.unit * 3
  },
  locationGrid: {
    padding: theme.spacing.unit * 5,
    [theme.breakpoints.down('sm')]: {
      paddingTop: theme.spacing.unit * 5
    }
  },
  listItem: {
    lineHeight: 1.3,
    padding: theme.spacing.unit * 3,
    fontSize: 50,
    letterSpacing: 1.4,
    textDecoration: 'none',
    visibility: 'hidden',
    '&:hover': {
      visibility: 'visible',
      color: '#e7e452'
    },
    [theme.breakpoints.down('sm')]: {
      fontSize: 30,
      padding: theme.spacing.unit
    }
  },
  listItemLink: {
    color: 'white',
    textDecoration: 'none',
    visibility: 'visible',
    span: {
      display: 'block'
    },
    '&:hover': {
      color: '#e7e452'
    }
  }
});

const countries = [
  { geoid: 'country-KE', name: 'Kenya' },
  { geoid: 'country-ZA', name: 'South Africa' },
  { geoid: 'country-TZ', name: 'Tanzania' },
  { geoid: 'country-NG', name: 'Nigeria' }
];

function PortalChooser({ classes, close }) {
  return (
    <Grid container direction="row" className={classes.grid}>
      <Grid
        container
        direction="row"
        justify="space-around"
        item
        sm={12}
        md={5}
        lg={5}
        xl={5}
        alignItems="center"
        className={classes.locationGrid}
      >
        <Grid>
          <Typography variant="body2" className={classes.locationText}>
            <GetLocation />
            <img
              src={geolocate}
              alt="Use your location"
              className={classes.locateImage}
            />
            <hr className={classes.locationHr} />
          </Typography>
          <Typography variant="body2" className={classes.browseText}>
            or browse the list
          </Typography>
          <div
            role="button"
            tabIndex="0"
            onClick={close}
            onKeyPress={close}
            className={classes.closeText}
          >
            <span className={classes.closeSpan}>Close</span>
            <img src={cross} alt="Close Modal" className={classes.closeImage} />
          </div>
        </Grid>
      </Grid>
      <Grid
        justify="space-around"
        aligitem="center"
        sm={12}
        md={7}
        lg={7}
        xl={7}
      >
        <MenuList className={classes.countryList}>
          {countries.map((country, index) => (
            <MenuItem button className={classes.listItem}>
              <span className={classes.listIndex}>
                <NumberFormat value={index + 1} displayType="text" prefix="0" />
              </span>
              <a
                className={classes.listItemLink}
                href={`/profiles/${country.geoid}`}
              >
                &nbsp;&nbsp;&nbsp; {country.name}
              </a>
            </MenuItem>
          ))}
        </MenuList>
      </Grid>
    </Grid>
  );
}

PortalChooser.propTypes = {
  classes: PropTypes.shape().isRequired,
  close: PropTypes.func.isRequired
};

export default withStyles(styles)(PortalChooser);
