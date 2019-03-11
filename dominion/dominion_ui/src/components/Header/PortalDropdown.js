import React from 'react';
import PropTypes from 'prop-types';

import KeyboardArrowDown from '@material-ui/icons/KeyboardArrowDown';
import KeyboardArrowUp from '@material-ui/icons/KeyboardArrowUp';

import { Grid, MenuList, MenuItem, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  root: {
    width: '100%',
    paddingTop: '52px',
    [theme.breakpoints.up('sm')]: {
      width: theme.spacing.unit * 20,
      marginRight: theme.spacing.unit * 10,
      paddingTop: 0
    }
  },
  button: {
    border: 0,
    textTransform: 'none',
    [theme.breakpoints.down('sm')]: {
      width: '100%'
    }
  },
  p: {
    color: '#fff',
    textDecoration: 'none',
    fontFamily: theme.typography.fontFamily,
    fontWeight: '600',
    letterSpacing: '0.1755rem',
    fontSize: '0.85rem',
    [theme.breakpoints.down('sm')]: {
      width: '100%',
      textAlign: 'left',
      lineHeight: '7em'
    }
  },
  KeyboardArrowDown: {
    paddingLeft: '10px',
    cursor: 'pointer'
  },
  menuList: {
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
    color: '#fff',
    textDecoration: 'none',
    fontFamily: theme.typography.fontHeading,
    fontSize: theme.spacing.unit * 3.7,
    '&:hover': {
      color: '#e7e452',
      textDecoration: 'none'
    }
  }
});

function CountriesButtonComponent({ classes, onClick, isOpen }) {
  return (
    <Button disableRipple className={classes.button} onClick={onClick}>
      <span className={classes.p}>Countries</span>
      {isOpen ? (
        <KeyboardArrowUp
          fontSize="large"
          className={classes.KeyboardArrowDown}
        />
      ) : (
        <KeyboardArrowDown
          fontSize="large"
          className={classes.KeyboardArrowDown}
        />
      )}
    </Button>
  );
}

CountriesButtonComponent.propTypes = {
  classes: PropTypes.isRequired,
  onClick: PropTypes.isRequired,
  isOpen: PropTypes.isRequired
};

export const CountriesButton = withStyles(styles)(CountriesButtonComponent);

class Dropdown extends React.Component {
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
    const countries = window.dominion_countries;

    return (
      <Grid container className={classes.root}>
        <CountriesButton
          onClick={this.toggleDropdown}
          isOpen={isDropdownOpen}
        />
        {isDropdownOpen ? (
          <MenuList className={classes.menuList}>
            {Object.keys(countries).map(country => (
              <MenuItem item className={classes.menuListItem}>
                <a href={`/${country}`} className={classes.link}>
                  {countries[country].name}
                </a>
              </MenuItem>
            ))}
          </MenuList>
        ) : null}
      </Grid>
    );
  }
}

Dropdown.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Dropdown);
