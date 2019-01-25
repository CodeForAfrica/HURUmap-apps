import React from 'react';
import PropTypes from 'prop-types';

import DocumentHead from '../component/DocumentHead';
import Footer from '../component/Footer';
import Partners from '../component/Footer/Partners';

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
  url: PropTypes.string
};
export default Home;
