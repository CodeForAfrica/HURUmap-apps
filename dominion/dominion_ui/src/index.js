import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import withRoot from './withRoot';
import AboutDominion from './components/About';
import Showcase from './components/Showcase';
import Footer from './components/Footer';

library.add(fab);

const aboutDominion = document.getElementById('dominionAbout');
if (aboutDominion) {
  const AboutDominionApp = withRoot(AboutDominion);
  ReactDOM.render(<AboutDominionApp />, aboutDominion);
}

const showcase = document.getElementById('dominionShowcase');
if (showcase) {
  const ShowcaseApp = withRoot(Showcase);
  ReactDOM.render(<ShowcaseApp />, showcase);
}

const footer = document.getElementById('dominionFooter');
if (footer) {
  const FooterApp = withRoot(Footer);
  ReactDOM.render(<FooterApp />, footer);
}
