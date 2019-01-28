import React from "react";
import Partners from "../component/Footer/Partners";
import Footer from "../component/Footer/Index";
import DocumentHead from "../component/DocumentHead/Index";

function Home({ url }) {
  return (
    <React.Fragment>
      <DocumentHead url={url} />
      <Partners />
      <Footer />
    </React.Fragment>
  );
}

export default Home;
