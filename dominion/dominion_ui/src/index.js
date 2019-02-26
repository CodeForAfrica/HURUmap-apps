import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import withRoot from './withRoot';
import Footer from './components/Footer';
import Showcase from './components/Showcase';

library.add(fab);

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
