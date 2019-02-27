import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import withRoot from './withRoot';
import Header from './components/Header';
import Footer from './components/Footer';
import Showcase from './components/Showcase';

library.add(fab);

const render = (Component, elementId) => {
  const element = document.getElementById(elementId);
  if (element) {
    const App = withRoot(Component);
    ReactDOM.render(<App />, element);
  }
};

render(Header, 'dominionHeader');
render(Footer, 'dominionFooter');
render(Showcase, 'dominionShowcase');
