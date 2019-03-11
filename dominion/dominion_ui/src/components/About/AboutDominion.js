import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Header from './Header';
import Info, { InfoSubtitle, InfoBody } from './Info';
import Land from './Land';

import A from '../A';

import land from '../../assets/images/about/dominion-land.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: '2rem',
    backgroundColor: '#fff',
    justifyContent: 'flex-start',
    height: '56.25rem',
    alignContent: 'space-between',
    [theme.breakpoints.up('sm')]: {
      height: 'auto'
    },
    [theme.breakpoints.up('md')]: {
      justifyContent: 'space-evenly'
    }
  },
  header: {
    order: 2,
    [theme.breakpoints.up('md')]: {
      order: 1
    }
  },
  info: {
    order: 3,
    [theme.breakpoints.up('md')]: {
      order: 2
    }
  },
  land: {
    order: 1,
    [theme.breakpoints.up('md')]: {
      order: 3
    }
  }
});

function AboutDominion({ classes }) {
  return (
    <Grid
      container
      direction="row"
      className={classes.root}
      justify="space-evenly"
      alignItems="flex-start"
    >
      <Grid item className={classes.header}>
        <Header>
          About <br />
          Dominion
        </Header>
      </Grid>
      <Grid item className={classes.info}>
        <Info>
          <InfoSubtitle>
            Dominion is built on the HURUmap platform.{' '}
            <A href="https://hurumap.org" variant="subtitle2">
              HURUmap
            </A>{' '}
            shows the data behind the stories, and gives infomediaries like
            journalists, policy makers and civic activists an easy &lsquo;plug &
            play&rsquo; toolkit for finding and embedding interactive data
            visualisations into their storytelling.
          </InfoSubtitle>

          <InfoBody>
            Dominion is built on the HURUmap platform.{' '}
            <A href="https://hurumap.org" variant="subtitle2">
              HURUmap
            </A>{' '}
            shows the data behind the stories, and gives infomediaries like
            journalists, policy makers and civic activists an easy &lsquo;plug &
            play&rsquo; toolkit for finding and embedding interactive data
            visualisations into their storytelling.
          </InfoBody>
        </Info>
      </Grid>
      <Grid item className={classes.land}>
        <Land imgSrc={land} />
      </Grid>
    </Grid>
  );
}

AboutDominion.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(AboutDominion);
