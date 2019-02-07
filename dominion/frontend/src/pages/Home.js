import React from 'react';
import PropTypes from 'prop-types';

import About from '../component/About';
import DocumentHead from '../component/DocumentHead';
import Footer from '../component/Footer';
import Showcase from '../component/Showcase';

function Home({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Showcase />
      <About />
      <Footer />
    </React.Fragment>
  );
}

Home.propTypes = {
  url: PropTypes.string.isRequired
};
export default Home;
