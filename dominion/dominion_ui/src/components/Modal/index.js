import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';

import { Modal as MaterialModal, IconButton } from '@material-ui/core';

import background from '../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: 0,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    top: '100px'
  },
  modal: {
    outline: 'none',
    height: 'auto',
    width: '100vw',
    padding: '0 1.875rem',
    [theme.breakpoints.up('md')]: {
      padding: '0 3.125rem'
    },
    [theme.breakpoints.up('lg')]: {
      padding: '0 9.375rem'
    }
  },
  icon: {
    padding: 0
  }
});

class Modal extends Component {
  constructor(props) {
    super(props);
    this.state = {
      isOpen: false
    };

    this.handleToggle = this.handleToggle.bind(this);
  }

  handleToggle() {
    const { isOpen } = this.state;
    this.setState({ isOpen: !isOpen });
  }

  render() {
    const {
      classes,
      activator,
      activatorLabel,
      activatorIconOpen,
      activatorIconClose,
      children
    } = this.props;
    const { isOpen } = this.state;

    return (
      <React.Fragment>
        {activator ? (
          activator({ toggleModal: this.handleToggle, isModalOpen: isOpen })
        ) : (
          <IconButton
            disableRipple
            aria-label={activatorLabel}
            className={classes.icon}
            onClick={this.handleToggle}
          >
            <img
              src={isOpen ? activatorIconClose : activatorIconOpen}
              alt={activatorLabel}
            />
          </IconButton>
        )}

        <MaterialModal
          disableAutoFocus
          hideBackdrop
          aria-labelledby="search-modal"
          open={isOpen}
          onClose={this.handleToggle}
          className={classes.root}
        >
          <div className={classes.modal}>
            {React.cloneElement(children, {
              toggleModal: this.handleToggle,
              isModalOpen: isOpen
            })}
          </div>
        </MaterialModal>
      </React.Fragment>
    );
  }
}

Modal.propTypes = {
  classes: PropTypes.shape().isRequired,
  activator: PropTypes.func,
  activatorLabel: PropTypes.isRequired,
  activatorIconOpen: PropTypes.isRequired,
  activatorIconClose: PropTypes.isRequired,
  children: PropTypes.isRequired
};

Modal.defaultProps = {
  activator: null
};

export default withStyles(styles)(Modal);
