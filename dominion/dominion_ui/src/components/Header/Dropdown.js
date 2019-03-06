import React from 'react';
import PropTypes from 'prop-types';

import KeyboardArrowDown from '@material-ui/icons/KeyboardArrowDown';
import KeyboardArrowUp from '@material-ui/icons/KeyboardArrowUp';
import withWidth, { isWidthDown } from '@material-ui/core/withWidth';

import { Grid, MenuList, MenuItem, Modal, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import PortalChooser from '../Modal/PortalChooser';

const styles = theme => ({
  root: {
    width: '100%',
    paddingTop: '52px',
    [theme.breakpoints.up('sm')]: {
      width: theme.spacing.unit * 20,
      marginRight: theme.spacing.unit * 12,
      paddingTop: 0
    }
  },
  button: {
    padding: 0,
    border: 0,
    textTransform: 'none',
    [theme.breakpoints.down('sm')]: {
      width: '100%'
    }
  },
  p: {
    color: '#fff',
    textDecoration: 'none',
    fontFamily: theme.typography.fontFamily,
    fontWeight: '600',
    letterSpacing: '0.1755rem',
    fontSize: '0.85rem',
    [theme.breakpoints.down('sm')]: {
      width: '100%',
      textAlign: 'left',
      lineHeight: '7em'
    }
  },
  KeyboardArrowDown: {
    paddingLeft: '10px',
    cursor: 'pointer'
  },
  modalContent: {
    margin: 'auto',
    top: theme.spacing.unit * 10,
    height: 'auto'
  },
  menuList: {
    [theme.breakpoints.down('sm')]: {
      flexDirection: 'column',
      paddingTop: '10px'
    }
  },
  menuListItem: {
    [theme.breakpoints.down('sm')]: {
      paddingLeft: 0,
      paddingRight: 0
    }
  },
  link: {
    color: '#fff',
    textDecoration: 'none',
    fontFamily: theme.typography.fontHeading,
    fontSize: theme.spacing.unit * 3.7,
    '&:hover': {
      color: '#e7e452',
      textDecoration: 'none'
    }
  }
});

function CountryMenu({ classes, countries }) {
  return (
    <React.Fragment>
      {Object.keys(countries).map(country => (
        <MenuItem item className={classes.menuListItem}>
          <a href={`/${country}`} className={classes.link}>
            {countries[country].name}
          </a>
        </MenuItem>
      ))}
    </React.Fragment>
  );
}
CountryMenu.propTypes = {
  classes: PropTypes.isRequired,
  countries: PropTypes.isRequired
};

function Dropdown({ classes, width, isDropdownOpen, handleToggle, countries }) {
  return (
    <Grid container className={classes.root}>
      <Button disableRipple className={classes.button} onClick={handleToggle}>
        <span className={classes.p}>Countries</span>
        {isDropdownOpen ? (
          <KeyboardArrowUp
            fontSize="large"
            className={classes.KeyboardArrowDown}
          />
        ) : (
          <KeyboardArrowDown
            fontSize="large"
            className={classes.KeyboardArrowDown}
          />
        )}
      </Button>
      {isWidthDown('sm', width) && isDropdownOpen ? (
        <MenuList sm={4} className={classes.menuList}>
          <CountryMenu countries={countries} classes={classes} />
        </MenuList>
      ) : (
        <Modal
          disableAutoFocus
          hideBackdrop
          open={isDropdownOpen}
          onClose={handleToggle}
          className={classes.modalContent}
          aria-labelledby="portal-chooser-nav"
        >
          <PortalChooser countries={countries} close={handleToggle} />
        </Modal>
      )}
    </Grid>
  );
}

Dropdown.propTypes = {
  classes: PropTypes.isRequired,
  width: PropTypes.isRequired,
  handleToggle: PropTypes.func.isRequired,
  countries: PropTypes.shape().isRequired,
  isDropdownOpen: PropTypes.bool.isRequired
};

export default withWidth()(withStyles(styles)(Dropdown));
