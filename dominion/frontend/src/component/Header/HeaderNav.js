import React, { Component } from 'react';
import PropTypes from 'prop-types';

import '../../assets/App.css';

import MenuOutlined from '@material-ui/icons/MenuOutlined';

import {
  Grid,
  Typography,
  MenuList,
  MenuItem,
  Toolbar
} from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import Search from './Search';
import logo from '../../assets/images/logos/dominion-logo.png';
import DropdownSelect from './DropdownSelect';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  img: {
    maxWidth: '100%',
    height: 'auto'
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
  links: {
    color: theme.palette.primary.main,
    textDecoration: 'none'
  },
  icon: {
    color: 'white',
    fontSize: 30
  }
});

class HeaderNav extends Component {
  constructor(props) {
    super(props);
    this.state = {
      menu: ''
    };
  }

  setToggleTopMenuClass = () => {
    const { menu } = this.state;
    if (menu === '') {
      this.setState({
        menu: 'toggled'
      });
    } else {
      this.setState({
        menu: ''
      });
    }
  };

  render = () => {
    const { classes } = this.props;
    const { menu } = this.state;
    const topMenuClass = `top-menu ${menu}`;
    return (
      <nav position="static" className={topMenuClass}>
        <Toolbar>
          <Grid item xs={3} className="top-menu-lead">
            <img src={logo} alt="Dominion Logo" className={classes.img} />
          </Grid>

          <Grid container direction="row" justify="center" alignItems="center">
            <MenuList xs={4} className="menu-nav ">
              <MenuItem item>
                <a href="/" className={classes.links}>
                  <Typography variant="body1" className={classes.text}>
                    About
                  </Typography>
                </a>
              </MenuItem>

              <MenuItem item>
                <a href="/" className={classes.links}>
                  <Typography variant="body1" className={classes.text}>
                    Showcase
                  </Typography>
                </a>
              </MenuItem>

              <MenuItem item>
                <a href="/" className={classes.links}>
                  <Typography variant="body1" className={classes.text}>
                    Resources
                  </Typography>
                </a>
              </MenuItem>

              <MenuItem item>
                <a href="/" className={classes.links}>
                  <Typography variant="body1" className={classes.text}>
                    {' '}
                    Contact
                  </Typography>
                </a>
              </MenuItem>
            </MenuList>
          </Grid>

          <Grid
            xs={12}
            container
            direction="row"
            justify="flex-end"
            alignItems="center"
          >
            <DropdownSelect className="menu-nav-country-menu " />
            <Search className="menu-nav-search" />
          </Grid>

          <Grid>
            <MenuOutlined
              color="primary"
              className="top-menu-icon"
              onClick={this.setToggleTopMenuClass}
            />
            <div className="clear-fix" />
          </Grid>
        </Toolbar>
      </nav>
    );
  };
}

HeaderNav.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(HeaderNav);
