import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import A from '../A';
import SocialMedia from '../SocialMedia';
import background from '../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: theme.spacing.unit * 3,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
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
  },
  bigText: {
    paddingTop: theme.spacing.unit * 3,
    [theme.breakpoints.up('lg')]: {
      paddingTop: 0
    }
  }
});

function About({ classes }) {
  return (
    <Grid
      container
      className={classes.root}
      direction="row"
      justify="space-between"
      alignItems="flex-start"
    >
      <Grid item xs={12} sm={7}>
        <Typography variant="body2" className={classes.title}>
          HURUmap&apos;s underlying data is quality-checked from reputable
          official sources including the government census,{' '}
          <A href="https://www.pepfar.gov/" className={classes.links}>
            PEPFAR{' '}
          </A>
          and{' '}
          <A href="http://www.uwezo.net/" className={classes.links}>
            UWEZO.
          </A>
        </Typography>
        <Typography variant="body2" className={classes.body}>
          This project is built on software originally created by the Knight Lab
          in the USA for the{' '}
          <A href="https://censusreporter.org/" className={classes.links}>
            censusReporter.org
          </A>{' '}
          project which has been repurposed by{' '}
          <A href="https://openup.org.za/" className={classes.links}>
            OpenUp
          </A>{' '}
          and Media Monitoring Africa for Wazimap in South Africa for Wazimap in
          SouthAfrica and by Code for Africa for HURUmap in Kenya, Tanzania,
          Uganda and Zambia.
        </Typography>
      </Grid>
      <Grid
        item
        xs={12}
        sm={5}
        spacing={24}
        container
        direction="row"
        justify="center"
        alignItems="flex-start"
      >
        <Grid item>
          <Typography
            variant="body2"
            className={classes.listText}
            component="div"
          >
            Other openAfrica Projects
            <ul className={classes.list}>
              <li>
                <A
                  href="https://taxclock.codeforkenya.org/"
                  className={classes.links}
                >
                  Tax Clock
                </A>
              </li>
              <li>
                <A href="https://sourceafrica.net/" className={classes.links}>
                  sourceAFRICA
                </A>
              </li>
            </ul>
          </Typography>
          <Typography
            variant="body2"
            className={classes.joinText}
            component="div"
          >
            Join Our Community
            <ul className={classes.list}>
              <li>
                <A
                  href="https://www.facebook.com/HacksHackersAfrica"
                  className={classes.links}
                >
                  Hacks/Hackers Africa
                </A>
              </li>
            </ul>
          </Typography>
        </Grid>
        <Grid item>
          <Typography
            variant="body2"
            className={classes.listText}
            component="div"
          >
            A project by:
            <ul className={classes.list}>
              <li>
                <A href="https://codeforafrica.org/" className={classes.links}>
                  Code for Africa
                </A>
              </li>
              <li>
                <A href="https://www.icfj.org/" className={classes.links}>
                  ICFJ
                </A>
              </li>
            </ul>
          </Typography>
          <div style={{ marginTop: '3.5rem' }}>
            <SocialMedia />
          </div>
        </Grid>
      </Grid>
    </Grid>
  );
}
About.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(About);
