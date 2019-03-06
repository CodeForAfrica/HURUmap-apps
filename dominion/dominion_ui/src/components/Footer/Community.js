import React from 'react';
import PropTypes from 'prop-types';

import classNames from 'classnames';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import A from '../A';

const styles = theme => ({
  root: {
    width: '7.125rem', // 114px / 16
    [theme.breakpoints.up('md')]: {
      width: '12.5625rem' // 201px
    }
  },
  listText: {
    // match parent width
    width: '7.125rem',
    [theme.breakpoints.up('md')]: {
      width: '12.5625rem' // 201px
    },
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
    paddingTop: '1.5rem'
  }
});

function Community({ classes }) {
  const joinClassName = classNames(classes.listText, classes.joinText);
  return (
    <div classes={classes.root}>
      <Typography variant="body2" className={classes.listText} component="div">
        Other openAFRICA Projects
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
      <Typography variant="body2" className={joinClassName} component="div">
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
    </div>
  );
}
Community.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Community);
