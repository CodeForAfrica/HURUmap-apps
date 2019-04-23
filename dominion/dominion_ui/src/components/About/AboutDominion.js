import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Header from './Header';
import Info, { InfoSubtitle, InfoBody } from './Info';
import Land from './Land';

import A from '../A';

import land from '../../assets/images/hero-image-3_2.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: '#fff',
    justifyContent: 'flex-start',
    alignContent: 'space-between',
    [theme.breakpoints.up('md')]: {
      justifyContent: 'space-evenly',
      padding: '50px'
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
            <p>
              Land and how it is controlled shapes everything from our food
              security and geopolitics to national identity.
            </p>
            <p>
              The scramble for control of high value land (and its attributes
              such as water and mineral wealth), in the face of escalating
              climate change and urbanisation, underpins much of Africa’s
              fiercest conflicts and mass migrations.
            </p>
          </InfoSubtitle>

          <InfoBody>
            <p>
              Dominion is CfA’s attempt to inject data-driven evidence and
              analysis into public discourse policy-setting across the
              continent.
            </p>
            <p>
              Dominion is designed as an umbrella data visualisation portal,
              powered by the <A href="https://hurumap.org">HURUmap</A> stack of
              geo-data software tools, that aggregates land data so that
              journalists / researchers / policymakers can use it to explore
              comparisons, spot trends or find other insights.
            </p>
            <p>
              Dominion also aggregates the best journalistic stories and/or
              campaigns that partners create using our data / infographics.
            </p>
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
