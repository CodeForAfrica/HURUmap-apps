import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import withRoot from './withRoot';
import Data from './components/Data';
import Footer from './components/Footer';
import Showcase from './components/Showcase';

library.add(fab);

const data = document.getElementById('dominionData');
if (data) {
  const DataApp = withRoot(Data);
  ReactDOM.render(<DataApp />, data);
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
