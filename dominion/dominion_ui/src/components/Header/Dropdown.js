import React, { Component } from 'react';
import PropTypes from 'prop-types';

import KeyboardArrowDown from '@material-ui/icons/KeyboardArrowDown';
import KeyboardArrowUp from '@material-ui/icons/KeyboardArrowUp';
import withWidth, { isWidthUp } from '@material-ui/core/withWidth';

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
  },
  menuList: {
    display: 'flex',
    width: '100%',
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
    fontFamily: theme.typography.fontFamily,
    fontWeight: '600'
  }
});

const countries = [
  { geoid: 'country-KE', name: 'Kenya' },
  { geoid: 'country-ZA', name: 'South Africa' },
  { geoid: 'country-TZ', name: 'Tanzania' },
  { geoid: 'country-NG', name: 'Nigeria' }
];

class Dropdown extends Component {
  constructor(props) {
    super(props);

    this.state = { isDropdownOpen: false };
    this.handleToggle = this.handleToggle.bind(this);
  }

  handleToggle() {
    this.setState(prevState => ({ isDropdownOpen: !prevState.isDropdownOpen }));
  }

  // const countryElement = (
  //   <Grid container sm={12} wrap="nowrap">
  //     <MenuList sm={4} className={classes.menuList}>
  //       {countries.map(country => (
  //         <MenuItem item className={classes.menuListItem}>
  //           <Link to=`/profiles/${country.geoid}` className={classes.link} variant="body1">
  //             {country.name}
  //           </Link>
  //         </MenuItem>
  //       ))}
  //     </MenuList>
  //   </Grid>
  // );

  render() {
    const { classes, width } = this.props;
    const { isDropdownOpen } = this.state;
    return (
      <Grid container className={classes.root}>
        <Button
          disableRipple
          className={classes.button}
          onClick={this.handleToggle}
        >
          <span className={classes.p}>Countries</span>
          {isDropdownOpen ? (
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
        <Modal
          disableAutoFocus
          hideBackdrop
          open={isDropdownOpen && isWidthUp('sm', width)}
          countries={countries}
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
  classes: PropTypes.isRequired,
  width: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Dropdown));
