import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid, Link, MenuList, MenuItem, IconButton } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import withWidth, { isWidthDown } from '@material-ui/core/withWidth';
import logo from '../../assets/images/logos/dominion-logo.png';
import logoWithCountrySpace from '../../assets/images/logos/dominion-logo-country.png';
import Dropdown, { CountriesButton } from './PortalDropdown';

import Modal from '../Modal';
import PortalModal from '../Modal/PortalChooser';

import Search from '../Search';

import menuIcon from '../../assets/images/icons/menu.svg';
import backIcon from '../../assets/images/icons/back.svg';
import searchIcon from '../../assets/images/icons/location.svg';

import background from '../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  topMenu: {
    padding: '1.875rem',
    [theme.breakpoints.up('md')]: {
      padding: '1.875rem 3.125rem'
    },
    [theme.breakpoints.up('lg')]: {
      padding: '3.125rem 9.375rem'
    },
    position: 'relative',
    width: '100%'
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

class Header extends Component {
  constructor(props) {
    super(props);

    this.state = {
      openModal: null
    };

    this.toggleModal = this.toggleModal.bind(this);
    this.toggleMenuModal = this.toggleMenuModal.bind(this);
    this.toggleSearchModal = this.toggleSearchModal.bind(this);
    this.togglePortalModal = this.togglePortalModal.bind(this);
  }

  toggleModal(modal) {
    switch (modal) {
      case 'search':
        return this.toggleSearchModal;
      case 'portal':
        return this.togglePortalModal;
      default:
        return null;
    }
  }

  toggleMenuModal() {
    this.setState(prevState => ({
      openModal: prevState.openModal === 'menu' ? null : 'menu'
    }));
  }

  toggleSearchModal() {
    this.setState(prevState => ({
      openModal: prevState.openModal === 'search' ? null : 'search'
    }));
  }

  togglePortalModal() {
    this.setState(prevState => ({
      openModal: prevState.openModal === 'portal' ? null : 'portal'
    }));
  }

  menuList() {
    const { classes } = this.props;
    return (
      <MenuList className={classes.menuList}>
        {['About', 'Showcase', 'Resources', 'Contact'].map(menuTitle => (
          <MenuItem item className={classes.menuListItem}>
            <Link to="/" className={classes.link} variant="body1">
              {menuTitle}
            </Link>
          </MenuItem>
        ))}
      </MenuList>
    );
  }

  renderMobileMenu() {
    return (
      <Search>
        <Dropdown />
        {this.menuList()}
      </Search>
    );
  }

  renderDesktopMenu() {
    const { classes } = this.props;
    const { openModal } = this.state;
    return (
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
          onClick={this.toggleSearchModal}
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
          onClick={this.togglePortalModal}
          isOpen={openModal === 'portal'}
        />
        {this.menuList()}
      </Grid>
    );
  }

  render() {
    const { openModal } = this.state;
    const { classes, children, width } = this.props;
    const selectedCountry = window.selected_country;

    const brand = (
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
    return (
      <Grid sm={12} className={classes.root}>
        <Grid
          container
          direction="row"
          wrap="nowrap"
          justify="space-between"
          alignItems="center"
          className={classes.topMenu}
        >
          {brand}
          {isWidthDown('sm', width) ? (
            <IconButton
              disableRipple
              aria-label="Menu"
              onClick={this.toggleMenuModal}
              style={{
                padding: 0
              }}
            >
              <img alt="Menu" src={menuIcon} />
            </IconButton>
          ) : (
            this.renderDesktopMenu()
          )}
        </Grid>

        {React.cloneElement(children, { toggleModal: this.toggleModal })}

        <Modal isOpen={openModal === 'menu'}>{this.renderMobileMenu()}</Modal>
        <Modal isOpen={openModal === 'search'}>
          <Search handleIconClick={this.toggleSearchModal} />
        </Modal>
        <PortalModal
          isOpen={openModal === 'portal'}
          handleClose={this.togglePortalModal}
        />
      </Grid>
    );
  }
}

Header.propTypes = {
  classes: PropTypes.isRequired,
  width: PropTypes.isRequired,
  children: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Header));
