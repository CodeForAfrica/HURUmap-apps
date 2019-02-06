import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import SocialMedia from '../SocialMedia';

import background from '../../assets/images/bg/background.png';
import Partners from './Partners';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: theme.spacing.unit * 3,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    [theme.breakpoints.up('md')]: {
      height: '50vh'
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
  },
  bigText: {
    paddingTop: theme.spacing.unit * 3,
    [theme.breakpoints.up('lg')]: {
      paddingTop: 0
    }
  }
});

function Footer({ classes }) {
  return (
    <Grid>
      <Partners />
      <Grid
        container
        spacing={24}
        className={classes.root}
        direction="row"
        alignItems="center"
      >
        <Grid item xs={12} sm={7} justify="flex-end" alignItem="center">
          <Typography variant="body2" className={classes.title}>
            HURUmap&apos;s underlying data is quality-checked from reputable
            official sources including the government census,{' '}
            <a
              href="https://www.pepfar.gov/"
              target="_blank"
              rel="noopener noreferrer"
              className={classes.links}
            >
              PEPFAR{' '}
            </a>
            and{' '}
            <a
              href="http://www.uwezo.net/"
              target="_blank"
              rel="noopener noreferrer"
              className={classes.links}
            >
              UWEZO.
            </a>
          </Typography>
          <Typography variant="body2" className={classes.body}>
            This project is built on software originally created by the Knight
            Lab in the USA for the{' '}
            <a href="https://censusreporter.org/" className={classes.links}>
              censusReporter.org
            </a>{' '}
            project which has been repurposed by{' '}
            <a href="https://openup.org.za/" className={classes.links}>
              OpenUp
            </a>{' '}
            and Media Monitoring Africa for Wazimap in South Africa for Wazimap
            in SouthAfrica and by Code for Africa for HURUmap in Kenya,
            Tanzania, Uganda and Zambia.
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
            <Typography variant="body2" className={classes.listText}>
              Other openAfrica Projects
              <ul className={classes.list}>
                <li>
                  <a
                    href="https://taxclock.codeforkenya.org/"
                    className={classes.links}
                  >
                    Tax Clock
                  </a>
                </li>
                <li>
                  <a href="https://sourceafrica.net/" className={classes.links}>
                    sourceAFRICA
                  </a>
                </li>
              </ul>
            </Typography>
            <Typography variant="body2" className={classes.joinText}>
              Join Our Community
              <ul className={classes.list}>
                <li>
                  <a
                    href="https://www.facebook.com/HacksHackersAfrica"
                    className={classes.links}
                  >
                    Hacks/Hackers Africa
                  </a>
                </li>
              </ul>
            </Typography>
          </Grid>
          <Grid item>
            <Typography variant="body2" className={classes.listText}>
              A project by:
              <ul className={classes.list}>
                <li>
                  <a
                    href="https://codeforafrica.org/"
                    target="_blank"
                    rel="noopener noreferrer"
                    className={classes.links}
                  >
                    Code for Africa
                  </a>
                </li>
                <li>
                  <a
                    href="https://www.icfj.org/"
                    target="_blank"
                    rel="noopener noreferrer"
                    className={classes.links}
                  >
                    ICFJ
                  </a>
                </li>
              </ul>
            </Typography>
            <Grid style={{ marginTop: '3.5rem' }}>
              <SocialMedia />
            </Grid>
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  );
}
Footer.propTypes = {
  classes: PropTypes.object.isRequired
};

export default withStyles(styles)(Footer);
