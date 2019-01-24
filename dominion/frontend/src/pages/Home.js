import React from 'react';
import PropTypes from 'prop-types';

import Footer from '../component/Footer/index';
import DocumentHead from '../component/DocumentHead';

function Home({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Footer />
    </React.Fragment>
  );
}

Home.propTypes = {
  url: PropTypes.string
};
export default Home;
