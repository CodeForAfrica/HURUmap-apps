import React from 'react';
import PropTypes from 'prop-types';

import Header from '../component/Header/Header';
import Footer from '../component/Footer/index';
import DocumentHead from '../component/DocumentHead/index';


function Home({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Header />
      <Footer />
    </React.Fragment>
  );
}

Home.propTypes = {
  url: PropTypes.string.isRequired
};
export default Home;
