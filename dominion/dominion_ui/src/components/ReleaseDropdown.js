import React, { Component } from 'react';
import PropTypes from 'prop-types';

import KeyboardArrowDown from '@material-ui/icons/KeyboardArrowDown';
import KeyboardArrowUp from '@material-ui/icons/KeyboardArrowUp';

import { Typography, Button, MenuList, MenuItem } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  root: {
    display: 'inline-block'
  },
  button: {
    border: 0,
    textTransform: 'none',
    height: '50px',
    padding: 0,
    marginRight: -theme.spacing.unit * 0.5,
    [theme.breakpoints.down('sm')]: {
      width: '100%'
    }
  },
  p: {
    color: '#e7e452',
    fontWeight: '600',
    fontSize: '0.95rem',
    paddingLeft: theme.spacing.unit * 2,
    [theme.breakpoints.down('sm')]: {
      width: '100%',
      textAlign: 'left',
      lineHeight: '7em'
    }
  },
  KeyboardArrow: {
    paddingLeft: '5px',
    color: '#e7e452',
    cursor: 'pointer'
  },
  menuList: {
    backgroundColor: 'white',
    position: 'absolute',
    bottom: '-40px',
    width: '65%',
    padding: 0,
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
    color: 'black',
    textDecoration: 'none',
    fontFamily: theme.typography.fontHeading,
    fontSize: theme.spacing.unit * 2
  }
});

class ReleaseDropdown extends Component {
  constructor(props) {
    super(props);

    this.state = { isDropdownOpen: false };
    this.toggleDropdown = this.toggleDropdown.bind(this);
  }

  toggleDropdown() {
    this.setState(prevState => ({ isDropdownOpen: !prevState.isDropdownOpen }));
  }

  render() {
    const { classes } = this.props;
    const { isDropdownOpen } = this.state;
    const { primaryReleases } = window.profileDataJson.primary_releases;
    return (
      <div className={classes.root}>
        <Button
          disableRipple
          className={classes.button}
          onClick={this.toggleDropdown}
        >
          <Typography variant="body2" className={classes.p}>
            Change release
          </Typography>
          {isDropdownOpen ? (
            <KeyboardArrowUp
              fontSize="large"
              className={classes.KeyboardArrow}
            />
          ) : (
            <KeyboardArrowDown
              fontSize="large"
              className={classes.KeyboardArrow}
            />
          )}
        </Button>
        {isDropdownOpen ? (
          <MenuList className={classes.menuList}>
            <MenuItem item className={classes.menuListItem}>
              <a
                href={`?release=${primaryReleases.active.year}`}
                className={classes.link}
              >
                {primaryReleases.active.citation}
              </a>
            </MenuItem>
            {primaryReleases.other.map(release => (
              <MenuItem item className={classes.menuListItem}>
                <a href={`?release=${release.year}`} className={classes.link}>
                  {release.citation}
                </a>
              </MenuItem>
            ))}
          </MenuList>
        ) : null}
      </div>
    );
  }
}

ReleaseDropdown.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(ReleaseDropdown);
