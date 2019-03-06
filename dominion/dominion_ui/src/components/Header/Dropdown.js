import React, { Component } from 'react';
import PropTypes from 'prop-types';

import KeyboardArrowDown from '@material-ui/icons/KeyboardArrowDown';
import KeyboardArrowUp from '@material-ui/icons/KeyboardArrowUp';
import withWidth, { isWidthDown } from '@material-ui/core/withWidth';

import { Grid, MenuList, MenuItem, Modal, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import PortalChooser from '../Modal/PortalChooser';

const countries = window.dominion_countries;

const styles = theme => ({
  root: {
    width: '150px',
    [theme.breakpoints.down('sm')]: {
      width: '100%',
      paddingTop: '52px'
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
      color: '#e7e452'
    }
  }
});

class Dropdown extends Component {
  constructor(props) {
    super(props);

    this.state = { isDropdownOpen: false };
    this.handleToggle = this.handleToggle.bind(this);
  }

  handleToggle() {
    this.setState(prevState => ({ isDropdownOpen: !prevState.isDropdownOpen }));
  }

  renderCountryMenu() {
    const { classes } = this.props;
    return (
      <React.Fragment>
        {countries.map(country => (
          <MenuItem item className={classes.menuListItem}>
            <a href={`/profiles/${country.geoid}`} className={classes.link}>
              {country.name}
            </a>
          </MenuItem>
        ))}
      </React.Fragment>
    );
  }

  render() {
    const { classes, width } = this.props;
    const { isDropdownOpen } = this.state;

    return (
      <Grid container className={classes.root}>
        <Button
          disableRipple
          className={classes.button}
          onClick={this.handleToggle}
        >
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
            {this.renderCountryMenu()}
          </MenuList>
        ) : (
          <Modal
            disableAutoFocus
            hideBackdrop
            open={isDropdownOpen}
            onClose={this.handleToggle}
            className={classes.modalContent}
            aria-labelledby="portal-chooser-nav"
          >
            <PortalChooser countries={countries} close={this.handleToggle} />
          </Modal>
        )}
      </Grid>
    );
  }
}

Dropdown.propTypes = {
  classes: PropTypes.isRequired,
  width: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Dropdown));
