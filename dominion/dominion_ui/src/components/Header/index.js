import React from 'react';
import { Grid } from '@material-ui/core';

import Header from './Header';

import HomeHero from '../Hero/HomeHero';
import CountryHero from '../Hero/CountryHero';
import ProfileHero from '../Hero/ProfileHero';

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

export function ProfilePageHeader(props) {
  return (
    <Header {...props}>
      <ProfileHero />
    </Header>
  );
}

export function ComparePageNav(props) {
  return (
    <Header {...props}>
      <Grid style={{ visibility: 'hidden' }} />
    </Header>
  );
}
