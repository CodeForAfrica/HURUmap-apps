import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid, Link, MenuList, MenuItem, IconButton } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Search from './Search';
import background from '../../assets/images/bg/background.png';
import logo from '../../assets/images/logos/dominion-logo.png';
import Dropdown from './Dropdown';

import menu from '../../assets/menu.svg';
import back from '../../assets/back.svg';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  rootToggle: {
    [theme.breakpoints.down('xs')]: {
      height: '100%'
    }
  },
  topMenu: {
    padding: '20px 50px 20px 50px',
    [theme.breakpoints.down('xs')]: {
      padding: '30px'
    }
  },
  topMenuContent: {
    position: 'relative'
  },
  topMenuNav: {
    flexWrap: 'nowrap',
    [theme.breakpoints.down('xs')]: {
      flexDirection: 'column',
      position: 'absolute',
      top: '100px',
      left: 0,
      display: 'none'
    }
  },
  topMenuNavToggle: {
    [theme.breakpoints.down('xs')]: {
      display: 'inline-flex'
    }
  },
  topMenuIcon: {
    color: 'white',
    display: 'none',
    width: '100%',
    [theme.breakpoints.down('xs')]: {
      display: 'inline-block'
    }
  },
  topMenuLead: {
    width: 'auto',
    [theme.breakpoints.down('xs')]: {
      width: '100%'
    }
  },
  menuList: {
    display: 'flex',
    width: '100%',
    [theme.breakpoints.down('xs')]: {
      flexDirection: 'column',
      paddingTop: '10px'
    }
  },
  menuListItem: {
    [theme.breakpoints.down('xs')]: {
      paddingLeft: 0,
      paddingRight: 0
    }
  },
  img: {
    height: '45px'
  },
  link: {
    color: '#fff',
    textDecoration: 'none'
  }
});

class Header extends Component {
  constructor(props) {
    super(props);

    this.state = { isMenuOpen: false };
    this.setToggleTopMenuClass = this.setToggleTopMenuClass.bind(this);
  }

  setToggleTopMenuClass() {
    const { isMenuOpen } = this.state;
    this.setState({ isMenuOpen: !isMenuOpen });
  }

  render() {
    const { classes } = this.props;
    const { isMenuOpen } = this.state;
    return (
      <Grid
        xs={12}
        className={`${classes.root} ${isMenuOpen ? classes.rootToggle : ''}`}
      >
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
              alignItems="center"
              className={classes.topMenuLead}
            >
              <img src={logo} alt="Dominion Logo" className={classes.img} />
              <IconButton
                aria-label="Menu"
                className={classes.topMenuIcon}
                onClick={this.setToggleTopMenuClass}
              >
                <img src={isMenuOpen ? back : menu} alt="Dominion Logo" />
              </IconButton>
            </Grid>

            <Grid
              container
              direction="row-reverse"
              justify="flex-start"
              wrap="nowrap"
              alignItems="center"
              className={`${classes.topMenuNav} ${
                isMenuOpen ? classes.topMenuNavToggle : ''
              }`}
            >
              <Search item xs={12} />
              <Dropdown item xs={12} />
              <MenuList xs={4} className={classes.menuList}>
                {['About', 'Showcase', 'Resources', 'Contact'].map(
                  menuTitle => (
                    <MenuItem item className={classes.menuListItem}>
                      <Link to="/" className={classes.link} variant="body1">
                        {menuTitle}
                      </Link>
                    </MenuItem>
                  )
                )}
              </MenuList>
            </Grid>
          </Grid>
        </nav>
      </Grid>
    );
  }
}

Header.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Header);
