import React from 'react';

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

export default Home;
