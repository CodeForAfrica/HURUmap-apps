import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid, Link, MenuList, MenuItem } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import withWidth, { isWidthDown } from '@material-ui/core/withWidth';
import Search from './Search';
import logo from '../../assets/images/logos/dominion-logo.png';
import logoWithCountrySpace from '../../assets/images/logos/dominion-logo-country.png';
import Dropdown from './Dropdown';

import Modal from '../Modal';

import menu from '../../assets/images/icons/menu.svg';
import back from '../../assets/images/icons/back.svg';

const countries = window.dominion_countries;

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  topMenu: {
    padding: '1.875rem',
    [theme.breakpoints.up('md')]: {
      padding: '1.875rem 3.125rem'
    },
    [theme.breakpoints.up('lg')]: {
      padding: '3.125rem 9.375rem'
    }
  },
  topMenuContent: {
    position: 'relative'
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
  topMenuLead: {
    width: '100%'
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
    },
    logoCountryName: {
      position: 'absolute',
      color: 'white',
      top: '1.75rem',
      left: '3.1875rem',
      margin: 0,
      fontFamily: theme.typography.fontFamily,
      fontWeight: 500,
      fontSize: 'x-small'
    }
  }
});

class Header extends Component {
  constructor(props) {
    super(props);

    this.renderMenu = this.renderMenu.bind(this);
  }

  renderMenu() {
    const { classes } = this.props;

    return (
      <React.Fragment>
        <Search>
          <Dropdown countries={countries} />
          <MenuList className={classes.menuList}>
            {['About', 'Showcase', 'Resources', 'Contact'].map(menuTitle => (
              <MenuItem item className={classes.menuListItem}>
                <Link to="/" className={classes.link} variant="body1">
                  {menuTitle}
                </Link>
              </MenuItem>
            ))}
          </MenuList>
        </Search>
      </React.Fragment>
    );
  }

  render() {
    const { classes, width } = this.props;

    const selectedCountry = window.selected_country;

    return (
      <Grid sm={12} className={classes.root}>
        <nav className={classes.topMenu}>
          <Grid
            container
            direction="row"
            justify="space-between"
            alignItems="center"
            wrap="nowrap"
            className={classes.topMenuContent}
          >
            <Grid
              container
              direction="row"
              wrap="nowrap"
              justify="space-between"
              alignItems="center"
              className={classes.topMenuLead}
            >
              <div style={{ position: 'relative', marginRight: '50px' }}>
                <img
                  src={selectedCountry ? logoWithCountrySpace : logo}
                  alt="Dominion Logo"
                  className={classes.img}
                />
                {selectedCountry ? (
                  <p className={classes.logoCountryName}>
                    {selectedCountry.name.toUpperCase()}
                  </p>
                ) : null}
              </div>

              {isWidthDown('sm', width) ? (
                <Modal
                  activatorLabel="Menu"
                  activatorIconOpen={menu}
                  activatorIconClose={back}
                >
                  {this.renderMenu()}
                </Modal>
              ) : (
                <Grid
                  container
                  direction="row-reverse"
                  justify="flex-start"
                  wrap="nowrap"
                  alignItems="center"
                  className={classes.topMenuNav}
                >
                  {this.renderMenu()}
                </Grid>
              )}
            </Grid>
          </Grid>
        </nav>
      </Grid>
    );
  }
}

Header.propTypes = {
  classes: PropTypes.isRequired,
  width: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Header));
