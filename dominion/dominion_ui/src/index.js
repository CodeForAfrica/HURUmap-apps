import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import withRoot from './withRoot';
import AboutDominion from './components/About';
import Data from './components/Data';
import Footer from './components/Footer';
import Showcase from './components/Showcase';
import HomeHero from './components/Hero/HomeHero';
import Video from './components/Video';

library.add(fab);

const renderApp = (Component, id) => {
  const el = document.getElementById(id);
  if (el) {
    const App = withRoot(Component);
    ReactDOM.render(<App />, el);
  }
};

renderApp(HomeHero, 'dominionHomeHero');
renderApp(Video, 'dominionVideo');
renderApp(Showcase, 'dominionShowcase');
renderApp(Data, 'dominionData');
renderApp(AboutDominion, 'dominionAbout');
renderApp(Footer, 'dominionFooter');
