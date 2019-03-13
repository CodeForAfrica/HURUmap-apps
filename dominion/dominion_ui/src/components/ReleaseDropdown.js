import React, { Component } from 'react';
import PropTypes from 'prop-types';

import KeyboardArrowDown from '@material-ui/icons/KeyboardArrowDown';
import KeyboardArrowUp from '@material-ui/icons/KeyboardArrowUp';

import { Typography, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  button: {
    border: 0,
    textTransform: 'none',
    height: '50px',
    padding: 0,
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
    return (
      <Button
        disableRipple
        className={classes.button}
        onClick={this.toggleDropdown}
      >
        <Typography variant="body2" className={classes.p}>
          Change release
        </Typography>
        {isDropdownOpen ? (
          <KeyboardArrowUp fontSize="large" className={classes.KeyboardArrow} />
        ) : (
          <KeyboardArrowDown
            fontSize="large"
            className={classes.KeyboardArrow}
          />
        )}
      </Button>
    );
  }
}

ReleaseDropdown.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(ReleaseDropdown);
