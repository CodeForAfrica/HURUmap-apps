import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid, Link, MenuList, MenuItem, IconButton } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import withWidth, { isWidthDown } from '@material-ui/core/withWidth';
import logo from '../../assets/images/logos/dominion-logo.png';
import logoWithCountrySpace from '../../assets/images/logos/dominion-logo-country.png';
import Dropdown, { CountriesButton } from './PortalDropdown';

import Search from '../Search';

import menuIcon from '../../assets/images/icons/menu.svg';
import backIcon from '../../assets/images/icons/back.svg';
import searchIcon from '../../assets/images/icons/location.svg';

import Modal from '../Modal';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  topMenuNav: {
    flexWrap: 'nowrap',
    padding: 0,
    [theme.breakpoints.down('sm')]: {
      flexDirection: 'column',
      position: 'absolute',
      top: '6.25rem',
      left: 0,
      display: 'none'
    }
  },
  topMenuIcon: {
    color: 'white',
    display: 'none',
    [theme.breakpoints.down('sm')]: {
      display: 'inline-block'
    }
  },
  topMenuIconImg: {
    marginRight: '-0.625rem'
  },
  menuList: {
    width: '100%',
    display: 'flex',
    letterSpacing: '0.175rem',
    [theme.breakpoints.down('sm')]: {
      flexDirection: 'column',
      paddingTop: '0.625rem'
    }
  },
  menuListItem: {
    [theme.breakpoints.down('sm')]: {
      paddingLeft: 0,
      paddingRight: 0
    }
  },
  img: {
    height: '45px',
    maxWidth: 'unset'
  },
  link: {
    color: '#fff',
    textDecoration: 'none',
    fontFamily: theme.typography.fontFamily,
    fontWeight: '600',
    '&:hover': {
      color: '#e7e452',
      textDecoration: 'none'
    }
  },
  logoCountryName: {
    position: 'absolute',
    color: 'white',
    top: '1.75rem',
    left: '3.625rem',
    margin: 0,
    fontFamily: theme.typography.fontFamily,
    fontWeight: 500,
    fontSize: 'x-small'
  }
});

class Navigation extends Component {
  renderMenuList() {
    const { classes } = this.props;
    return (
      <MenuList className={classes.menuList}>
        {['About', 'Showcase', 'Resources', 'Contact'].map(menuTitle => (
          <MenuItem item className={classes.menuListItem}>
            <Link
              variant="body1"
              className={classes.link}
              to={`/${menuTitle.toLowerCase()}`}
            >
              {menuTitle}
            </Link>
          </MenuItem>
        ))}
      </MenuList>
    );
  }

  renderBrand() {
    const { classes } = this.props;
    const selectedCountry = window.selected_country;

    return (
      <div style={{ position: 'relative', marginRight: '50px' }}>
        <img
          alt="Dominion Logo"
          src={selectedCountry ? logoWithCountrySpace : logo}
          className={classes.img}
        />
        {selectedCountry ? (
          <p className={classes.logoCountryName}>
            {selectedCountry.name.toUpperCase()}
          </p>
        ) : null}
      </div>
    );
  }

  renderMobileMenu() {
    const { classes, toggleModal, openModal } = this.props;

    const Topbar = () => (
      <Grid
        container
        direction="row"
        wrap="nowrap"
        justify="space-between"
        alignItems="center"
        className={classes.root}
      >
        {this.renderBrand()}
        <IconButton
          disableRipple
          aria-label="Menu"
          onClick={toggleModal('menu')}
          style={{
            padding: 0
          }}
        >
          <img alt="Menu" src={openModal === 'menu' ? backIcon : menuIcon} />
        </IconButton>
      </Grid>
    );

    return (
      <React.Fragment>
        <Topbar />

        <Modal isOpen={openModal === 'menu'}>
          <Topbar />
          <Search>
            <Dropdown />
            {this.renderMenuList()}
          </Search>
        </Modal>
      </React.Fragment>
    );
  }

  renderDesktopMenu() {
    const { classes, toggleModal, openModal } = this.props;

    return (
      <Grid
        container
        direction="row"
        wrap="nowrap"
        justify="space-between"
        alignItems="center"
        className={classes.root}
      >
        {this.renderBrand()}
        <Grid
          container
          direction="row-reverse"
          justify="flex-start"
          wrap="nowrap"
          alignItems="center"
          className={classes.topMenuNav}
        >
          <IconButton
            disableRipple
            aria-label="Search"
            onClick={toggleModal('search')}
            style={{
              marginLeft: 60
            }}
          >
            <img
              alt="Search"
              src={openModal === 'search' ? backIcon : searchIcon}
            />
          </IconButton>
          <CountriesButton
            onClick={toggleModal('portal')}
            isOpen={openModal === 'portal'}
          />
          {this.renderMenuList()}
        </Grid>
      </Grid>
    );
  }

  render() {
    const { width } = this.props;
    return isWidthDown('sm', width)
      ? this.renderMobileMenu()
      : this.renderDesktopMenu();
  }
}

Navigation.propTypes = {
  classes: PropTypes.isRequired,
  width: PropTypes.isRequired,
  openModal: PropTypes.isRequired,
  toggleModal: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Navigation));
