import React from 'react';
import PropTypes from 'prop-types';

import { Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  root: {
    flexGrow: 1,
    paddingTop: '10px',
    [theme.breakpoints.up('md')]: {
      maxWidth: '21.875rem',
      paddingLeft: '1rem',
      paddingRight: '2rem'
    },
    [theme.breakpoints.up('lg')]: {
      maxWidth: '30rem',
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

function InfoSubtitleElement({ classes, children }) {
  return (
    <Typography variant="subtitle1" className={classes.subtitle}>
      {children}
    </Typography>
  );
}

InfoSubtitleElement.propTypes = {
  classes: PropTypes.shape().isRequired,
  children: PropTypes.isRequired
};

export const InfoSubtitle = withStyles(styles)(InfoSubtitleElement);

function InfoBodyElement({ classes, children }) {
  return (
    <Typography variant="body2" className={classes.body}>
      {children}
    </Typography>
  );
}

InfoBodyElement.propTypes = {
  classes: PropTypes.shape().isRequired,
  children: PropTypes.isRequired
};

export const InfoBody = withStyles(styles)(InfoBodyElement);

function Info({ classes, children }) {
  return <div className={classes.root}>{children}</div>;
}

Info.propTypes = {
  classes: PropTypes.shape().isRequired,
  children: PropTypes.isRequired
};

export default withStyles(styles)(Info);
