import React, { Component } from 'react';
import PropTypes from 'prop-types';

import {
  Grid,
  Link,
  MenuList,
  MenuItem,
  SvgIcon,
  IconButton
} from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Search from './Search';
import background from '../../assets/images/bg/background.png';
import logo from '../../assets/images/logos/dominion-logo.png';
import Dropdown from './Dropdown';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  topMenu: {
    padding: '20px 50px 20px 50px',
    [theme.breakpoints.down('xs')]: {
      padding: '20px'
    }
  },
  topMenuToggle: {
    [theme.breakpoints.down('xs')]: {
      height: '450px'
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
  menuNav: {
    display: 'flex',
    width: '100%',
    [theme.breakpoints.down('xs')]: {
      flexDirection: 'column'
    }
  },
  menuNavSearch: {
    color: 'white'
  },
  img: {
    height: '45px'
  },
  menulist: {
    display: 'flex'
  },
  text: {
    color: theme.palette.primary.main
  },
  fa: {
    transition: 'all .5s ease-in-out',
    color: '#fff',
    ' &:hover': {
      transform: 'scale(1.3)',
      color: theme.palette.primary.main
    }
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
      <Grid xs={12} className={classes.root}>
        <nav
          className={`${classes.topMenu} ${
            isMenuOpen ? classes.topMenuToggle : ''
          }`}
        >
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
                <SvgIcon>
                  <svg
                    width="28"
                    height="28"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <g>
                      <rect
                        id="svg_1"
                        height="3"
                        width="100%"
                        strokeWidth="0"
                        fill="#fff"
                      />
                      <rect
                        id="svg_2"
                        height="3"
                        width="50%"
                        y="9"
                        x="50%"
                        strokeWidth="0"
                        fill="#fff"
                      />
                    </g>
                  </svg>
                </SvgIcon>
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
              <MenuList xs={4} className={classes.menuNav}>
                <MenuItem item>
                  <Link to="/" className={classes.link} variant="body1">
                    About
                  </Link>
                </MenuItem>

                <MenuItem item>
                  <Link to="/" className={classes.link} variant="body1">
                    Showcase
                  </Link>
                </MenuItem>

                <MenuItem item>
                  <Link to="/" className={classes.link} variant="body1">
                    Resources
                  </Link>
                </MenuItem>

                <MenuItem item>
                  <Link to="/" className={classes.link} variant="body1">
                    {' '}
                    Contact
                  </Link>
                </MenuItem>
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
