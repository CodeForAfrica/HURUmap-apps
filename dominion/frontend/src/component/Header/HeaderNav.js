import React, { Component } from 'react';
import PropTypes from 'prop-types';

import MenuOutlined from '@material-ui/icons/MenuOutlined';
import SearchOutlined from '@material-ui/icons/SearchOutlined';
import KeyboardArrowDownOutlined from '@material-ui/icons/KeyboardArrowDownOutlined';

import logo from '../../assets/images/logos/dominion-logo.png';

import {
  Grid,
  Typography,
  MenuList,
  MenuItem,
  Toolbar
} from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import '../../assets/App.css';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  img: {
    maxWidth: '100%',
    height: 'auto'
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
  },
  togglebreakpoint: {
    color: 'white',
    [theme.breakpoints.up('xs')]: {
      color: 'red'
    }
  }
});

class HeaderNav extends Component {
  constructor(props) {
    super(props);
    this.state = {
      menu_class: ''
    };
  }

  setToggleTopMenuClass = () => {
    if (this.state.menu_class === '') {
      this.setState({
        menu_class: 'toggled'
      });
    } else {
      this.setState({
        menu_class: ''
      });
    }
  };

  render = () => {
    const { classes } = this.props;
    const top_menu_class = `top-menu ${this.state.menu_class}`;
    return (
      <nav position="static" className={top_menu_class}>
        <Toolbar>
          <Grid item xs={4} className="top-menu-lead">
            <img src={logo} alt="Dominion Logo" className={classes.img} />
          </Grid>

          <Grid
            container
            direction="row"
            justify="center"
            alignItems="center"
            className="menu-nav"
          >
            <MenuList
              item
              className={classes.text}
              direction="row"
              justify="space-evenly"
              alignItems="center"
              style={{ display: 'flex' }}
            >
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

            <Grid
              container
              xs={12}
              lg={6}
              direction="row"
              spacing={40}
              justify="space-evenly"
              alignItems="center"
            >
              <Grid item>
                <Grid
                  container
                  direction="row"
                  justify="space-between"
                  alignItems="center"
                >
                  <Typography variant="body1" className={classes.text}>
                    Countries
                  </Typography>
                  <KeyboardArrowDownOutlined className={classes.icon} />
                </Grid>
              </Grid>

              <Grid item className={classes.text}>
                <SearchOutlined />
              </Grid>
            </Grid>
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
  classes: PropTypes.object.isRequired
};

export default withStyles(styles)(HeaderNav);
