import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import A from '../A';

const styles = theme => ({
  root: {
    flexGrow: 1,
    textAlign: 'left',
    [theme.breakpoints.up('lg')]: {
      width: '21.45rem'
    },
    [theme.breakpoints.up('md')]: {
      width: '15rem'
    }
  },
  title: {
    color: theme.palette.primary.dark,
    opacity: '0.6',
    [theme.breakpoints.up('md')]: {
      paddingTop: '1rem'
    }
  },
  button: {
    border: '1px solid black',
    '&:hover': {
      backgroundColor: 'white'
    }
  },
  subtitleGrid: {
    paddingTop: '0.5rem',
    paddingBottom: '0.5rem'
  },
  contentCount: {
    fontSize: '3.125rem',
    [theme.breakpoints.up('md')]: {
      fontSize: theme.typography.h1.fontSize
    }
  },
  contentText: {
    paddingTop: '1rem',
    [theme.breakpoints.up('md')]: {
      height: '4.76rem'
    }
  },
  link: { textDecoration: 'none' },
  linkText: {
    fontWeight: 'bold',
    paddingTop: '1rem',
    [theme.breakpoints.up('md')]: {
      paddingTop: '2.7rem'
    }
  }
});

function Content({
  children,
  classes,
  title,
  contentCount,
  contentType,
  description,
  link
}) {
  return (
    <Grid className={classes.root}>
      <Grid item xs={12}>
        {children}
      </Grid>

      <Grid item xs={12}>
        <div className={classes.subtitleGrid}>
          <Typography variant="subtitle2" className={classes.title}>
            {title}
          </Typography>
        </div>
      </Grid>

      <Grid item xs={12}>
        <Typography variant="h1" className={classes.contentCount}>
          {contentCount}
        </Typography>
      </Grid>

      <Grid item xs={12}>
        <Typography variant="h4">{contentType}</Typography>
        <div className={classes.contentText}>
          <Typography variant="subtitle2" className={classes.title}>
            {description}
          </Typography>
        </div>

        <A href={link} className={classes.link}>
          <Typography variant="subtitle2" className={classes.linkText}>
            View {contentType}
          </Typography>
        </A>
      </Grid>
    </Grid>
  );
}

Content.propTypes = {
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  classes: PropTypes.shape().isRequired,
  title: PropTypes.string.isRequired,
  contentCount: PropTypes.string.isRequired,
  contentType: PropTypes.string.isRequired,
  description: PropTypes.string.isRequired,
  link: PropTypes.string.isRequired
};

export default withStyles(styles)(Content);
