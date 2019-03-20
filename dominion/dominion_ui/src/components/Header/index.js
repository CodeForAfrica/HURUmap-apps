import React from 'react';
import { Grid } from '@material-ui/core';

import Header from './Header';

import HomeHero from '../Hero/HomeHero';
import CountryHero from '../Hero/CountryHero';
import ProfileHero from '../Hero/ProfileHero';

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

export function ProfilePageHeader() {
  return (
    <Header>
      <ProfileHero />
    </Header>
  );
}

export function ComparePageNav() {
  return (
    <Header>
      <Grid style={{ visibility: 'hidden' }} />
    </Header>
  );
}
