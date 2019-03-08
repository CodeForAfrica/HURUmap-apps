import React from 'react';
import PropTypes from 'prop-types';

import withWidth, { isWidthDown } from '@material-ui/core/withWidth';

import SearchModal from '../Modal/Search';
import Search from '../Search';

function HearderSearch({ width, children }) {
  return (
    <React.Fragment>
      {isWidthDown('sm', width) ? (
        <Search>{children}</Search>
      ) : (
        <React.Fragment>
          <SearchModal />
          {children}
        </React.Fragment>
      )}
    </React.Fragment>
  );
}

HearderSearch.propTypes = {
  width: PropTypes.isRequired,
  children: PropTypes.isRequired
};

export default withWidth()(HearderSearch);
