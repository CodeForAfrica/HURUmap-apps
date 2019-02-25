import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import FooterApp from './FooterApp';
import ShowcaseApp from './ShowcaseApp';

library.add(fab);

const showcase = document.getElementById('dominionShowcase');
if (showcase) {
  ReactDOM.render(<ShowcaseApp />, showcase);
}
const footer = document.getElementById('dominionFooter');
if (footer) {
  ReactDOM.render(<FooterApp />, footer);
}
