import React from 'react';
import PropTypes from 'prop-types';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import A from '../A';

const styles = theme => ({
  root: {
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '30.2625rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      width: '40.35rem' // 644px / 16
    }
  },
  title: {
    color: theme.palette.primary.light,
    fontWeight: 'bold',
    opacity: '0.6'
  },
  body: {
    color: theme.palette.primary.light,
    opacity: '0.6',
    paddingTop: theme.spacing.unit * 3
  },
  listText: {
    color: theme.palette.primary.light,
    opacity: '0.6'
  },
  links: {
    color: theme.palette.primary.light
  },
  list: {
    listStyleType: 'none',
    padding: 0,
    marginTop: '0'
  },
  joinText: {
    paddingTop: theme.spacing.unit * 3,
    color: theme.palette.primary.light,
    opacity: '0.6'
  }
});

function About({ classes }) {
  return (
    <div className={classes.root}>
      <Typography variant="body2" className={classes.title}>
        HURUmap&apos;s underlying data is quality-checked from reputable
        official sources including the government census,{' '}
        <A href="https://www.pepfar.gov/" className={classes.links}>
          PEPFAR
        </A>{' '}
        and{' '}
        <A href="http://www.uwezo.net/" className={classes.links}>
          UWEZO.
        </A>
      </Typography>
      <Typography variant="body2" className={classes.body}>
        This project is built on software originally created by the Knight Lab
        in the USA for the{' '}
        <A href="https://censusreporter.org/" className={classes.links}>
          CensusReporter.org
        </A>{' '}
        project which has been repurposed by{' '}
        <A href="https://openup.org.za/" className={classes.links}>
          OpenUp
        </A>{' '}
        and Media Monitoring Africa for Wazimap in South Africa for Wazimap in
        South Africa and by{' '}
        <A href="https://codeforafrica.org/" className={classes.links}>
          Code for Africa
        </A>{' '}
        for HURUmap in{' '}
        <A href="https://kenya.hurumap.org/" className={classes.links}>
          Kenya
        </A>
        ,{' '}
        <A href="https://tanzania.hurumap.org/" className={classes.links}>
          Tanzania
        </A>
        , Uganda and Zambia.
      </Typography>
    </div>
  );
}
About.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(About);
