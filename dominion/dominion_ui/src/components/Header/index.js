import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid, Link, MenuList, MenuItem } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import withWidth, { isWidthDown } from '@material-ui/core/withWidth';
import Search from './Search';
import background from '../../assets/images/bg/background.png';
import logo from '../../assets/images/logos/dominion-logo.png';
import Dropdown from './Dropdown';

import Modal from '../Modal';

import menu from '../../assets/images/icons/menu.svg';
import back from '../../assets/images/icons/back.svg';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  topMenu: {
    padding: '20px 50px 20px 50px',
    [theme.breakpoints.down('sm')]: {
      padding: '30px'
    }
  },
  topMenuContent: {
    position: 'relative'
  },
  topMenuNav: {
    flexWrap: 'nowrap',
    [theme.breakpoints.down('sm')]: {
      flexDirection: 'column',
      position: 'absolute',
      top: '100px',
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
    marginRight: '-10px'
  },
  topMenuLead: {
    width: '100%'
  },
  menuList: {
    display: 'flex',
    width: '100%',
    letterSpacing: '0.175rem',
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
  img: {
    height: '45px'
  },
  link: {
    color: '#fff',
    textDecoration: 'none',
    fontFamily: theme.typography.fontFamily,
    fontWeight: '600'
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
        <Search sm={12}>
          <Dropdown sm={12} />
          <MenuList sm={4} className={classes.menuList}>
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
              <img src={logo} alt="Dominion Logo" className={classes.img} />

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
