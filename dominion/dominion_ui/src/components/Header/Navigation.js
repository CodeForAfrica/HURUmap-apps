import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid, Link, MenuList, MenuItem, IconButton } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import withWidth, { isWidthDown } from '@material-ui/core/withWidth';
import logo from '../../assets/images/logos/dominion-logo.png';
import logoWithCountrySpace from '../../assets/images/logos/dominion-logo-country.png';
import Dropdown, { CountriesButton } from './PortalDropdown';

import Search from '../Search';
import PortalChooser from '../Modal/PortalChooser';

import menuIcon from '../../assets/images/icons/menu.svg';
import backIcon from '../../assets/images/icons/back.svg';
import searchIcon from '../../assets/images/icons/location.svg';

import Modal from '../Modal';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  wrapper: {
    padding: '1.875rem',
    [theme.breakpoints.up('md')]: {
      padding: '1.875rem 3.125rem'
    },
    [theme.breakpoints.up('lg')]: {
      padding: '1.875rem 9.375rem'
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
    fontSize: 'x-small',
    textTransform: 'uppercase'
  }
});

class Navigation extends Component {
  renderMenuList() {
    let showcaseLink = '#dominionShowcase';
    const {
      classes,
      dominion: { selectedCountry }
    } = this.props;
    if (selectedCountry) {
      // In order for showcase link to work in profile pages,
      // always start with country slug
      showcaseLink = `/${selectedCountry.slug}${showcaseLink}`;
    }
    return (
      <MenuList className={classes.menuList}>
        {[
          { title: 'About', link: '/about' },
          { title: 'Showcase', link: `${showcaseLink}` },
          { title: 'Resources', link: '/resources' },
          { title: 'Contact', link: '/contact' }
        ].map(menu => (
          <MenuItem key={menu.link} className={classes.menuListItem}>
            <Link variant="body1" className={classes.link} href={menu.link}>
              {menu.title}
            </Link>
          </MenuItem>
        ))}
      </MenuList>
    );
  }

  renderBrand() {
    const {
      classes,
      dominion: { selectedCountry }
    } = this.props;

    return (
      <Link
        component="a"
        href={selectedCountry ? `/${selectedCountry.slug}` : '/'}
        style={{ position: 'relative', marginRight: '50px' }}
      >
        <img
          alt="Dominion Logo"
          src={selectedCountry ? logoWithCountrySpace : logo}
          className={classes.img}
        />
        {selectedCountry ? (
          <p className={classes.logoCountryName}>{selectedCountry.name}</p>
        ) : null}
      </Link>
    );
  }

  renderMobileMenu() {
    const { classes, dominion, toggleModal, openModal } = this.props;
    const { countries } = dominion;
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

        <Modal
          isOpen={openModal === 'menu'}
          onEscapeKeyDown={toggleModal('menu')}
        >
          <Grid container className={classes.wrapper}>
            <Topbar />
            <Search dominion={dominion}>
              <Dropdown countries={countries} />
              {this.renderMenuList()}
            </Search>
          </Grid>
        </Modal>
      </React.Fragment>
    );
  }

  renderDesktopMenu() {
    const { classes, toggleModal, dominion, openModal } = this.props;
    const { countries } = dominion;
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
            <img alt="Search" src={searchIcon} />
          </IconButton>
          <CountriesButton
            countries={countries}
            onClick={toggleModal('portal')}
            isOpen={openModal === 'portal'}
          />
          {this.renderMenuList()}
        </Grid>
      </Grid>
    );
  }

  render() {
    const { classes, width, openModal, toggleModal, dominion } = this.props;
    const { countries } = dominion;
    const nav = isWidthDown('sm', width)
      ? this.renderMobileMenu()
      : this.renderDesktopMenu();

    return (
      <React.Fragment>
        <Grid container className={classes.wrapper}>
          {nav}
        </Grid>
        <Modal
          isOpen={openModal === 'search'}
          onEscapeKeyDown={toggleModal('search')}
        >
          <Grid container className={classes.wrapper}>
            {nav}
            <Search
              handleIconClick={toggleModal('search')}
              dominion={dominion}
            />
          </Grid>
        </Modal>
        <Modal
          isOpen={openModal === 'portal'}
          onEscapeKeyDown={toggleModal('portal')}
        >
          <Grid container className={classes.wrapper}>
            {nav}
            <PortalChooser
              handleClose={toggleModal('portal')}
              countries={countries}
            />
          </Grid>
        </Modal>
      </React.Fragment>
    );
  }
}

Navigation.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  width: PropTypes.string.isRequired,
  openModal: PropTypes.string,
  toggleModal: PropTypes.func.isRequired,
  dominion: PropTypes.shape({}).isRequired
};

Navigation.defaultProps = {
  openModal: null
};

export default withWidth()(withStyles(styles)(Navigation));
