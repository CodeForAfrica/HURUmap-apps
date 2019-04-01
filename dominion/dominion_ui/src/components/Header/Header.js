import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import withWidth from '@material-ui/core/withWidth';

import Navigation from './Navigation';

import background from '../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  modalNavigation: {
    padding: '1.875rem 0',
    [theme.breakpoints.up('md')]: {
      padding: '1.875rem 0'
    },
    [theme.breakpoints.up('lg')]: {
      padding: '3.125rem 0'
    },
    position: 'relative',
    width: '100%'
  }
});

class Header extends Component {
  constructor(props) {
    super(props);

    this.state = {
      openModal: null
    };

    this.toggleModal = this.toggleModal.bind(this);
  }

  toggleModal(modalName) {
    return () => {
      this.setState(prevState => ({
        openModal: prevState.openModal === modalName ? null : modalName
      }));
    };
  }

  render() {
    const { classes, children, dominion, profile } = this.props;
    const { openModal } = this.state;

    return (
      <Grid container className={classes.root}>
        <Navigation
          toggleModal={this.toggleModal}
          openModal={openModal}
          dominion={dominion}
          profile={profile}
        />

        {React.cloneElement(children, {
          dominion,
          profile,
          toggleModal: this.toggleModal
        })}
      </Grid>
    );
  }
}

Header.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  dominion: PropTypes.shape({}).isRequired,
  profile: PropTypes.shape({}).isRequired
};

export default withWidth()(withStyles(styles)(Header));
