import React from 'react';
import PropTypes from 'prop-types';

import Modal from './index';
import Search from '../Search';

import search from '../../assets/images/icons/location.svg';

const SearchModalContent = ({ toggleModal }) => (
  <Search handleIconClick={toggleModal} />
);

SearchModalContent.propTypes = {
  toggleModal: PropTypes.isRequired
};

function SearchModal({ activator }) {
  return (
    <Modal
      activator={activator}
      activatorLabel="Search"
      activatorIconOpen={search}
      activatorIconClose={search}
    >
      <SearchModalContent />
    </Modal>
  );
}

SearchModal.propTypes = {
  activator: PropTypes.isRequired
};

export default SearchModal;
