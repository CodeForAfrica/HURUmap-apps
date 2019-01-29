import React from 'react';
import PropTypes from 'prop-types';

import DocumentHead from '../component/DocumentHead';
import Partners from '../component/Footer/Partners';
import Footer from '../component/Footer';

function Home({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Partners />
      <Footer />
    </React.Fragment>
  );
}

Home.propTypes = {
  url: PropTypes.string.isRequired
};
export default Home;
