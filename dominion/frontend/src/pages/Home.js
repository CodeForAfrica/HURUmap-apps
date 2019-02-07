import React from 'react';
import PropTypes from 'prop-types';

import DocumentHead from '../component/DocumentHead';
import Header from '../component/Header';
import Showcase from '../component/Showcase';

import Footer from '../component/Footer/index';

function Home({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Header />
      <Showcase />
      <Footer />
    </React.Fragment>
  );
}

Home.propTypes = {
  url: PropTypes.string.isRequired
};
export default Home;
