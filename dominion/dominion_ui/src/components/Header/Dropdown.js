import React, { Component } from 'react';
import PropTypes from 'prop-types';

import KeyboardArrowDown from '@material-ui/icons/KeyboardArrowDown';

import { Grid, Button, MenuList, MenuItem, Link } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  root: {
    width: '150px',
    [theme.breakpoints.down('xs')]: {
      width: '100%',
      paddingTop: '52px'
    }
  },
  button: {
    padding: 0,
    border: 0,
    textTransform: 'none',
    [theme.breakpoints.down('xs')]: {
      width: '100%'
    }
  },
  p: {
    [theme.breakpoints.down('xs')]: {
      width: '100%',
      textAlign: 'left'
    }
  },
  KeyboardArrowDown: {
    paddingLeft: '10px',
    cursor: 'pointer'
  },
  dropdownList: {
    [theme.breakpoints.up('sm')]: {
      display: 'none'
    }
  },
  dropdownListClosed: {
    display: 'none'
  },
  dropdownListItem: {
    [theme.breakpoints.down('xs')]: {
      paddingLeft: 0,
      paddingRight: 0
    }
  },
  link: {
    fontSize: '30px',
    color: '#fff',
    textDecoration: 'none'
  }
});

const DEFAULT_OPTIONS = ['Kenya', 'Nigeria', 'Tanzania'];

class Dropdown extends Component {
  constructor(props) {
    super(props);

    this.state = { isDropdownOpen: false };
    this.setToggleDropdownClass = this.setToggleDropdownClass.bind(this);
  }

  setToggleDropdownClass() {
    const { isDropdownOpen } = this.state;
    this.setState({ isDropdownOpen: !isDropdownOpen });
  }

  render() {
    const { classes, options } = this.props;
    const { isDropdownOpen } = this.state;
    return (
      <Grid container className={classes.root}>
        <Button
          disableRipple
          className={classes.button}
          onClick={this.setToggleDropdownClass}
        >
          <p className={classes.p}>Countries</p>
          <KeyboardArrowDown
            fontSize="large"
            className={classes.KeyboardArrowDown}
          />
        </Button>

        <MenuList
          xs={12}
          className={`${classes.dropdownList} ${
            isDropdownOpen ? '' : classes.dropdownListClosed
          }`}
        >
          {options.map(optionTitle => (
            <MenuItem item className={classes.dropdownListItem}>
              <Link to="/" className={classes.link} variant="body1">
                {optionTitle}
              </Link>
            </MenuItem>
          ))}
        </MenuList>
      </Grid>
    );
  }
}

Dropdown.propTypes = {
  classes: PropTypes.isRequired,
  options: PropTypes.instanceOf(Array)
};

Dropdown.defaultProps = {
  options: DEFAULT_OPTIONS
};

export default withStyles(styles)(Dropdown);
