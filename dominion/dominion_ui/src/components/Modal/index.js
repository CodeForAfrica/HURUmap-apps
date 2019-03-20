import React from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';

import { Modal as MaterialModal } from '@material-ui/core';

import background from '../../assets/images/bg/background.png';

const styles = {
  root: {
    flexGrow: 1,
    padding: 0,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  modal: {
    outline: 'none',
    height: 'auto',
    width: '100vw'
  }
};

function Modal({ classes, children, isOpen, onEscapeKeyDown }) {
  return (
    <MaterialModal
      hideBackdrop
      open={isOpen}
      className={classes.root}
      onEscapeKeyDown={onEscapeKeyDown}
    >
      <div className={classes.modal}>{children}</div>
    </MaterialModal>
  );
}

Modal.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  isOpen: PropTypes.bool.isRequired,
  onEscapeKeyDown: PropTypes.func.isRequired
};

export default withStyles(styles)(Modal);
