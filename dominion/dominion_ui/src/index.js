import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import withRoot from './withRoot';

import Header from './components/Header';
import AboutDominion from './components/About';
import Data from './components/Data';
import Footer from './components/Footer';
import HomeHero from './components/Hero/HomeHero';
import CountryHero from './components/Hero/CountryHero';
import Partners from './components/Partners';
import Showcase from './components/Showcase';
import Video from './components/Video';

library.add(fab);

const renderApp = (Component, id) => {
  const el = document.getElementById(id);
  if (el) {
    const App = withRoot(Component);
    ReactDOM.render(<App />, el);
  }
};

renderApp(Header, 'dominionHeader');
renderApp(HomeHero, 'dominionHomeHero');
renderApp(CountryHero, 'dominionCountryHero');
renderApp(Video, 'dominionVideo');
renderApp(Showcase, 'dominionShowcase');
renderApp(Data, 'dominionData');
renderApp(AboutDominion, 'dominionAbout');
renderApp(Partners, 'dominionPartners');
renderApp(Footer, 'dominionFooter');
