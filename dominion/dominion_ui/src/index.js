import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import withRoot from './withRoot';

import { AboutCountry, AboutDominion } from './components/About';
import {
  CountryPageHeader,
  HomePageHeader,
  ProfilePageHeader
} from './components/Header';
import CountryPartners from './components/CountryPartners';
import Data from './components/Data';
import Footer from './components/Footer';
import HowItWorks from './components/HowItWorks/index';
import Partners from './components/Partners';
import ProfileTabs from './components/ProfileTabs';
import Showcase from './components/Showcase';
import Video from './components/Video';
import ProfileReleasesSection from './components/ProfileReleases';

library.add(fab);

const renderApp = (Component, id) => {
  const el = document.getElementById(id);
  if (el) {
    const App = withRoot(Component);

    ReactDOM.render(<App />, el);
  }
};

renderApp(HomePageHeader, 'dominionHomePageHeader');
renderApp(CountryPageHeader, 'dominionCountryPageHeader');
renderApp(ProfilePageHeader, 'dominionProfilePageHeader');
renderApp(AboutCountry, 'dominionCountryAbout');
renderApp(ProfileTabs, 'dominionProfileTabs');
renderApp(Video, 'dominionVideo');
renderApp(HowItWorks, 'dominionHowItWorks');
renderApp(Showcase, 'dominionShowcase');
renderApp(Data, 'dominionData');
renderApp(AboutDominion, 'dominionAbout');
renderApp(CountryPartners, 'dominionCountryPartners');
renderApp(ProfileReleasesSection, 'dominionProfileReleasesSection');
renderApp(Partners, 'dominionPartners');
renderApp(Footer, 'dominionFooter');
