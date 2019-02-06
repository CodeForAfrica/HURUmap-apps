import React from 'react';
import PropTypes from 'prop-types';

import DocumentHead from '../component/DocumentHead';
import Footer from '../component/Footer';
import Partners from '../component/Footer/Partners';
import Showcase from '../component/Showcase';

function Home({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Showcase />
      <Partners />
      <Footer />
    </React.Fragment>
  );
}

Home.propTypes = {
  url: PropTypes.string.isRequired
};
export default Home;
