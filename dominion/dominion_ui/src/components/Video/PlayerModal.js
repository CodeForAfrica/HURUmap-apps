import React from 'react';
import PropTypes from 'prop-types';

import Player from './Player';

import Modal from '../Modal';
import Navigation from '../Header/Navigation';

class PlayerModal extends React.Component {
  constructor(props) {
    super(props);

    this.state = { openModal: null };
    this.toggleModal = this.toggleModal.bind(this);
  }

  toggleModal(modalName) {
    return () => {
      this.setState(
        prevState => ({
          openModal: prevState.openModal === modalName ? null : modalName
        }),
        () => {
          // This closes the video modal
          // When all modals including modals in the navigtion are closed
          const { openModal } = this.state;
          const { handleClose } = this.props;
          if (openModal === null) {
            handleClose();
          }
        }
      );
    };
  }

  render() {
    const { dominion, open, handleClose } = this.props;
    const { openModal } = this.state;

    return (
      <Modal isOpen={open} onEscapeKeyDown={this.toggleModal(null)}>
        <Navigation
          dominion={dominion}
          toggleModal={this.toggleModal}
          openModal={openModal}
        />
        <Player handleClose={handleClose} />
      </Modal>
    );
  }
}

PlayerModal.propTypes = {
  dominion: PropTypes.shape({}).isRequired,
  open: PropTypes.bool.isRequired,
  handleClose: PropTypes.func.isRequired
};

export default PlayerModal;
