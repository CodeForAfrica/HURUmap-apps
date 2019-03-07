import React from 'react';
import PropTypes from 'prop-types';
import NumberFormat from 'react-number-format';

import {
  Grid,
  Typography,
  MenuList,
  MenuItem,
  Button
} from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import geolocate from '../../assets/images/icons/shape.svg';
import cross from '../../assets/images/icons/close.svg';
import GetLocation from './GetLocation';

import Modal from '../Modal';

const styles = theme => ({
  grid: {
    flexGrow: 1,
    width: '100%',
    color: 'white',
    [theme.breakpoints.up('md')]: {
      height: 400,
      alignItems: 'flex-end'
    }
  },
  countryList: {
    height: 300
  },
  locationText: {
    color: 'white',
    fontSize: 13,
    fontWeight: 'bold',
    '&:hover': {
      color: '#e7e452'
    },
    [theme.breakpoints.up('md')]: {
      paddingRight: '150px'
    }
  },
  locateImage: {
    float: 'right'
  },
  listIndex: {
    marginRight: '50px',
    [theme.breakpoints.down('sm')]: {
      display: 'none'
    }
  },
  closeButton: {
    color: 'white',
    border: 0,
    fontSize: 13,
    fontWeight: 'bold',
    [theme.breakpoints.up('md')]: {
      paddingLeft: 0,
      marginTop: theme.spacing.unit * 10
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
    [theme.breakpoints.up('md')]: {
      width: '100%'
    }
  },
  locationGrid: {
    paddingTop: theme.spacing.unit * 5,
    [theme.breakpoints.up('md')]: {
      paddingTop: 0
    }
  },
  locationActionsGrid: {
    paddingTop: theme.spacing.unit * 3
  },
  listItem: {
    lineHeight: 1.3,
    fontSize: 30,
    padding: theme.spacing.unit,
    paddingLeft: 0,
    paddingRight: 0,
    fontFamily: theme.typography.fontHeading,
    letterSpacing: 1.4,
    textDecoration: 'none',
    visibility: 'hidden',
    '&:hover': {
      visibility: 'visible',
      color: '#e7e452'
    },
    [theme.breakpoints.up('md')]: {
      fontSize: 50,
      padding: theme.spacing.unit * 3
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

function ContentElement({ classes, toggleModal }) {
  const countries = window.dominion_countries;
  return (
    <Grid
      container
      justify="flex-start"
      direction="row"
      className={classes.grid}
    >
      <Grid
        xs={12}
        sm={12}
        md={5}
        lg={5}
        xl={5}
        direction="column"
        alignItems="flex-start"
        className={classes.locationGrid}
      >
        <Typography variant="body2" className={classes.locationText}>
          <GetLocation countries={countries} />
          <img
            src={geolocate}
            alt="Use your location"
            className={classes.locateImage}
          />
          <hr className={classes.locationHr} />
        </Typography>
        <Grid
          container
          direction="row"
          justify="space-between"
          alignItems="center"
          className={classes.locationActionsGrid}
        >
          <Typography variant="body2" className={classes.browseText}>
            or browse the list
          </Typography>
          <Button onClick={toggleModal} className={classes.closeButton}>
            <span className={classes.closeSpan}>Close</span>
            <img src={cross} alt="Close Modal" className={classes.closeImage} />
          </Button>
        </Grid>
      </Grid>
      <Grid
        justify="flex-start"
        alignItems="flex-start"
        xs={12}
        sm={12}
        md={7}
        lg={7}
        xl={7}
        className={classes.locationGrid}
      >
        <MenuList className={classes.countryList}>
          {Object.keys(countries).map((country, index) => (
            <MenuItem button className={classes.listItem}>
              <span className={classes.listIndex}>
                <NumberFormat value={index + 1} displayType="text" prefix="0" />
              </span>
              <a className={classes.listItemLink} href={`/${country}`}>
                {countries[country].name}
              </a>
            </MenuItem>
          ))}
        </MenuList>
      </Grid>
    </Grid>
  );
}

ContentElement.propTypes = {
  classes: PropTypes.shape().isRequired,
  toggleModal: PropTypes.isRequired
};

const Content = withStyles(styles)(ContentElement);

function PortalChooser({ activator }) {
  return (
    <Modal activator={activator}>
      <Content />
    </Modal>
  );
}

PortalChooser.propTypes = {
  activator: PropTypes.isRequired
};

export default PortalChooser;
