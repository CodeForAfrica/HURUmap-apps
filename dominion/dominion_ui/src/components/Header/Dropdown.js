import React, { Component } from 'react';
import PropTypes from 'prop-types';

import KeyboardArrowDown from '@material-ui/icons/KeyboardArrowDown';

import { Grid, Button, Modal } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import PortalChooser from '../Modal/PortalChooser';

const styles = theme => ({
  root: {
    width: '150px',
    [theme.breakpoints.down('sm')]: {
      width: '100%',
      paddingTop: '52px'
    }
  },
  button: {
    padding: 0,
    border: 0,
    textTransform: 'none',
    [theme.breakpoints.down('sm')]: {
      width: '100%'
    }
  },
  p: {
    fontFamily: theme.typography.fontFamily,
    fontWeight: '600',
    fontSize: '14px',
    [theme.breakpoints.down('sm')]: {
      width: '100%',
      textAlign: 'left'
    }
  },
  KeyboardArrowDown: {
    paddingLeft: '10px',
    cursor: 'pointer'
  },
  modalContent: {
    margin: 'auto',
    top: theme.spacing.unit * 10,
    height: 'auto'
  }
});

class Dropdown extends Component {
  constructor(props) {
    super(props);

    this.state = { isDropdownOpen: false };
    this.handleToggle = this.handleToggle.bind(this);
  }

  handleToggle() {
    this.setState(prevState => ({ isDropdownOpen: !prevState.isDropdownOpen }));
  }

  render() {
    const { classes } = this.props;
    const { isDropdownOpen } = this.state;
    return (
      <Grid container className={classes.root}>
        <Button
          disableRipple
          className={classes.button}
          onClick={this.handleToggle}
        >
          <span className={classes.p}>Countries</span>
          <KeyboardArrowDown
            fontSize="large"
            className={classes.KeyboardArrowDown}
          />
        </Button>
        <Modal
          disableAutoFocus
          hideBackdrop
          open={isDropdownOpen}
          onClose={this.handleToggle}
          className={classes.modalContent}
          aria-labelledby="portal-chooser-nav"
        >
          <PortalChooser close={this.handleToggle} />
        </Modal>
      </Grid>
    );
  }
}

Dropdown.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Dropdown);
