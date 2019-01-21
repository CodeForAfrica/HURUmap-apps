import React from "react";
import PropTypes from "prop-types";
import { Helmet } from "react-helmet";

const CONTENT = {
  darkgrey: {
    hex: "#2a2929",
    version: "A07NM0Aaa5"
  }
};

/**
  manifest.json provides metadata used when your web app is added to the
  homescreen on Android.
  See https://developers.google.com/web/fundamentals/engage-and-retain/web-app-manifest/
*/
function Favicon({ color, version }) {
  const { hex, version: defaultVersion } = CONTENT[color];
  const v = version || defaultVersion;

  return (
    <Helmet
      link={[
        {
          rel: "apple-touch-icon",
          sizes: "180x180",
          href: `/favicons/${color}/apple-touch-icon.png?v=${v}`
        },
        {
          rel: "icon",
          type: "image/png",
          sizes: "32x32",
          href: `/favicons/${color}/favicon-32x32.png?v=${v}`
        },
        {
          rel: "icon",
          type: "image/png",
          sizes: "16x16",
          href: `/favicons/${color}/favicon-16x16.png?v=${v}`
        },
        {
          rel: "mask-icon",
          color: `${hex}`,
          href: `/favicons/${color}/safari-pinned-tab.svg?v=${v}`
        },
        {
          rel: "manifest",
          href: `/favicons/${color}/manifest.json?v=${v}`
        }
      ]}
      meta={[
        {
          name: "apple-mobile-web-app-title",
          content: "sensors.AFRICA"
        },
        {
          name: "application-name",
          content: "sensors.AFRICA"
        },
        {
          name: "msapplication-TileColor",
          content: `${hex}`
        },
        {
          name: "msapplication-config",
          content: `/favicons/${color}/browserconfig.xml?v=${v}`
        }
      ]}
    />
  );
}

Favicon.propTypes = {
  color: PropTypes.string,
  version: PropTypes.string
};

Favicon.defaultProps = {
  color: "darkgrey",
  version: null
};

export default Favicon;
