import React from 'react';

import Header from './Header';

import HomeHero from '../Hero/HomeHero';
import CountryHero from '../Hero/CountryHero';

export function HomePageHeader(props) {
  return (
    <Header {...props}>
      <HomeHero />
    </Header>
  );
}

export function CountryPageHeader(props) {
  return (
    <Header {...props}>
      <CountryHero />
    </Header>
  );
}
