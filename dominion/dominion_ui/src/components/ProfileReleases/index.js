import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import A from '../A';
import ReleaseDropdown from '../ReleaseDropdown';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: 'white',
    padding: '3.125em',
    flexWrap: 'wrap',
    justifyContent: 'flex-start',
    [theme.breakpoints.up('md')]: {
      flexWrap: 'nowrap',
      justifyContent: 'center'
    }
  },
  description: {
    order: 2,
    [theme.breakpoints.up('md')]: {
      order: 1
    }
  },
  releaseSelector: {
    order: 1,
    [theme.breakpoints.up('md')]: {
      order: 2
    }
  },
  descriptionTitle: {
    fontFamily: 'Montserrat',
    fontSize: '14px',
    fontWeight: 'bold',
    fontStyle: 'normal',
    fontStretch: 'normal',
    lineHeight: 1.43,
    letterSpacing: 'normal',
    color: '#2c2c2a',
    padding: '8px 0'
  },
  descriptionText: {
    fontFamily: 'Montserrat',
    fontSize: '9px',
    fontStyle: 'normal',
    fontWeight: 500,
    fontStretch: 'normal',
    lineHeight: 2.22,
    letterSpacing: 'normal',
    color: '#2c2c2a',
    opacity: 0.5
  },
  link: {
    opacity: 0.5,
    color: '#2c2c2a !important'
  },
  changeReleaseButton: {
    fontFamily: 'Montserrat',
    fontSize: '0.688em',
    fontWeight: 500,
    fontStyle: 'normal',
    fontStretch: 'normal',
    lineHeight: 2.09,
    letterSpacing: 'normal',
    textAlign: 'left',
    color: '#abca4f',
    justifyContent: 'space-between',
    textTransform: 'capitalize',
    '&:hover': {
      backgroundColor: 'transparent'
    },
    width: '9.375rem',
    paddingLeft: 0,
    [theme.breakpoints.up('md')]: {
      marginLeft: '50px'
    }
  },
  releasesMenuItem: {
    width: '9.375rem',
    maxWidth: '9.375rem'
  }
});

function ProfileReleasesSection({ classes, profile }) {
  const citationLink = link => (
    <A className={classes.link} href={link}>
      {link}
    </A>
  );
  const { primary_releases: primaryReleases = {} } = profile;
  const { active: activeRelease } = primaryReleases;

  return (
    <Grid container className={classes.root}>
      {activeRelease && (
        <Grid item className={classes.description}>
          <Typography className={classes.descriptionTitle}>
            {activeRelease.citation}
          </Typography>
          <Typography className={classes.descriptionText}>
            Municipal Elections 2016: Electoral Commission of South Africa
            (IEC), Municipal election results{' '}
            {citationLink(
              'https://wazimap.co.za/profiles/province-EC-eastern-cape'
            )}
            <br />
            National Elections 2014: Electoral Commission of South Africa (IEC),
            National and provincial election results{' '}
            {citationLink(
              'https://wazimap.co.za/profiles/province-EC-eastern-cape'
            )}
            <br />
            Provincial Elections 2014: Electoral Commission of South Africa
            (IEC), National and provincial election results{' '}
            {citationLink(
              'https://wazimap.co.za/profiles/province-EC-eastern-cape'
            )}
            <br />
            Municipal Elections 2011: Electoral Commission of South Africa
            (IEC), Municipal election results{' '}
            {citationLink(
              'https://wazimap.co.za/profiles/province-EC-eastern-cape'
            )}
            <br />
            Community Survey 2016: Statistics South Africa (2016) South African
            Community Survey 2016. Indicators derived from the full population
            Community Survey.{' '}
            {citationLink(
              'https://wazimap.co.za/profiles/province-EC-eastern-cape'
            )}
            <br />
            Census 2011: Statistics South Africa (2011) South African Population
            Census 2011. Indicators derived from the full population Census{' '}
            {citationLink(
              'https://wazimap.co.za/profiles/province-EC-eastern-cape'
            )}
            <br />
            Police Crime Statistics 2014: South African Police Service{' '}
            {citationLink(
              'https://wazimap.co.za/profiles/province-EC-eastern-cape'
            )}
          </Typography>
        </Grid>
      )}
      <Grid item className={classes.releaseSelector}>
        <ReleaseDropdown primaryReleases={primaryReleases} />
      </Grid>
    </Grid>
  );
}

ProfileReleasesSection.propTypes = {
  classes: PropTypes.shape().isRequired,
  profile: PropTypes.shape({}).isRequired
};

export default withStyles(styles)(ProfileReleasesSection);
