import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import withWidth from '@material-ui/core/withWidth';

import Navigation from './Navigation';

import Modal from '../Modal';
import PortalChooser from '../Modal/PortalChooser';

import Search from '../Search';

import background from '../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  wrapper: {
    padding: '1.875rem',
    [theme.breakpoints.up('md')]: {
      padding: '1.875rem 3.125rem'
    },
    [theme.breakpoints.up('lg')]: {
      padding: '3.125rem 9.375rem'
    },
    position: 'relative',
    width: '100%'
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
    this.toggleMenuModal = this.toggleMenuModal.bind(this);
    this.toggleSearchModal = this.toggleSearchModal.bind(this);
    this.togglePortalModal = this.togglePortalModal.bind(this);
  }

  toggleModal(modal) {
    switch (modal) {
      case 'menu':
        return this.toggleMenuModal;
      case 'search':
        return this.toggleSearchModal;
      case 'portal':
        return this.togglePortalModal;
      default:
        return null;
    }
  }

  toggleMenuModal() {
    this.setState(prevState => ({
      openModal: prevState.openModal === 'menu' ? null : 'menu'
    }));
  }

  toggleSearchModal() {
    this.setState(prevState => ({
      openModal: prevState.openModal === 'search' ? null : 'search'
    }));
  }

  togglePortalModal() {
    this.setState(prevState => ({
      openModal: prevState.openModal === 'portal' ? null : 'portal'
    }));
  }

  render() {
    const { openModal } = this.state;
    const { classes, children } = this.props;

    return (
      <Grid sm={12} className={classes.root}>
        <Grid container className={classes.wrapper}>
          <Navigation toggleModal={this.toggleModal} openModal={openModal} />
        </Grid>

        {React.cloneElement(children, { toggleModal: this.toggleModal })}

        <Modal isOpen={openModal === 'search'}>
          <Grid container className={classes.wrapper}>
            <Navigation toggleModal={this.toggleModal} openModal={openModal} />
            <Search handleIconClick={this.toggleSearchModal} />
          </Grid>
        </Modal>
        <Modal isOpen={openModal === 'portal'}>
          <Grid container className={classes.wrapper}>
            <Navigation toggleModal={this.toggleModal} openModal={openModal} />
            <PortalChooser handleClose={this.togglePortalModal} />
          </Grid>
        </Modal>
      </Grid>
    );
  }
}

Header.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Header));
