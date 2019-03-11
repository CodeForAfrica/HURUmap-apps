import React from 'react';

import Header from './Header';

import HomeHero from '../Hero/HomeHero';
import CountryHero from '../Hero/CountryHero';

export function HomePageHeader() {
  return (
    <Header>
      <HomeHero />
    </Header>
  );
}

export function CountryPageHeader() {
  return (
    <Header>
      <CountryHero />
    </Header>
  );
}
