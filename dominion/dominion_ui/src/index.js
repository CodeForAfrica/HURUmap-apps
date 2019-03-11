import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import withRoot from './withRoot';

import { HomePageHeader, CountryPageHeader } from './components/Header';
import AboutDominion from './components/About/AboutDominion';
import AboutCountry from './components/About/AboutCountry';
import Data from './components/Data';
import Footer from './components/Footer';
import Partners from './components/Partners';
import Showcase from './components/Showcase';
import Video from './components/Video';

import AppContextProvider from './AppContext';

library.add(fab);

const renderApp = (Component, id) => {
  const el = document.getElementById(id);
  if (el) {
    const App = withRoot(Component);

    const appProviderProps = {
      selectedCountry: window.COUNTRY
    };

    ReactDOM.render(
      <AppContextProvider {...appProviderProps}>
        <App />
      </AppContextProvider>,
      el
    );
  }
};

renderApp(HomePageHeader, 'dominionHomePageHeader');
renderApp(CountryPageHeader, 'dominionCountryPageHeader');
renderApp(AboutCountry, 'dominionCountryAbout');

renderApp(Video, 'dominionVideo');
renderApp(Showcase, 'dominionShowcase');
renderApp(Data, 'dominionData');
renderApp(AboutDominion, 'dominionAbout');
renderApp(Partners, 'dominionPartners');
renderApp(Footer, 'dominionFooter');
