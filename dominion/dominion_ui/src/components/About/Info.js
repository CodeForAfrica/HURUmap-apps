import React from 'react';
import PropTypes from 'prop-types';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import A from '../A';

const styles = theme => ({
  root: {
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '21.875rem',
      paddingLeft: '1rem',
      paddingRight: '2rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '24.4375rem', // 391px / 16
      padding: 0
    }
  },
  subtitle: {
    fontFamily: theme.typography.fontFamily,
    fontWeight: 'bold'
  },
  body: {
    marginTop: '1rem',
    lineHeight: '1.5rem'
  }
});

function Info({ classes }) {
  return (
    <div className={classes.root}>
      <Typography variant="subtitle1" className={classes.subtitle}>
        Dominion is built on the HURUmap platform.{' '}
        <A href="https://hurumap.org" variant="subtitle2">
          HURUmap
        </A>{' '}
        shows the data behind the stories, and gives infomediaries like
        journalists, policy makers and civic activists an easy &lsquo;plug &
        play&rsquo; toolkit for finding and embedding interactive data
        visualisations into their storytelling.
      </Typography>

      <Typography variant="body2" className={classes.body}>
        HURUmap&apos;s underlying data is quality-checked, from reputable
        official sources including the government Census,{' '}
        <A href="https://www.pepfar.gov" variant="body2">
          PEPFAR
        </A>{' '}
        and{' '}
        <A href="https://www.uwezo.net" variant="body2">
          Uwezo
        </A>
        . This project is built on software originally created by the Knight Lab
        in the U.S.A. for their CensusReporter.org project, which has been
        repurposed by{' '}
        <A href="https://openup.org.za" variant="body2">
          OpenUp
        </A>{' '}
        and Media Monitoring Africa for Wazimap in South Africa and by Code for
        Africa for HURUmap in Kenya, Tanzania, Uganda and Zambia.
      </Typography>
    </div>
  );
}

Info.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Info);
