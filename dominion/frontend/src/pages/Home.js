import React from "react";

import Footer from "../component/Footer/Index";
import DocumentHead from "../component/DocumentHead/Index";

function Home({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Footer />
    </React.Fragment>
  );
}

export default Home;
