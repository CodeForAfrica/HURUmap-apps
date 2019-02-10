import React from 'react';
import PropTypes from 'prop-types';

import About from '../component/About';
import DocumentHead from '../component/DocumentHead';
import Footer from '../component/Footer';
import Showcase from '../component/Showcase';
import Video from '../component/Video';

function Home({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Showcase />
      <Video />
      <About />
      <Footer />
    </React.Fragment>
  );
}

Home.propTypes = {
  url: PropTypes.string.isRequired
};
export default Home;
