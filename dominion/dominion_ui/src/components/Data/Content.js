import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import A from '../A';

const styles = theme => ({
  root: {
    flexGrow: 1,
    textAlign: 'left',
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '15rem' // 240px / 16
    }
  },
  title: {
    color: theme.palette.primary.light,
    fontWeight: 'bold',
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
  subtitleGrid: { paddingTop: '1rem', paddingBottom: '1rem' },
  contentText: {
    width: '14rem',
    paddingTop: '1rem',
    [theme.breakpoints.up('md')]: {
      paddingBottom: '1rem'
    }
  },
  link: { textDecoration: 'none' },
  linkText: {
    fontWeight: 'bold',
    paddingTop: '1rem',
    [theme.breakpoints.up('md')]: {
      paddingTop: '3rem'
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
    <Grid
      className={classes.root}
      container
      justify="flex-start"
      alignItems="center"
    >
      <Grid item xs={12}>
        {children}
      </Grid>

      <Grid item xs={12}>
        <div className={classes.subtitleGrid}>
          <Typography variant="body2" clasName={classes.title}>
            {title}
          </Typography>
        </div>
      </Grid>

      <Grid item xs={12}>
        <Typography variant="h2" style={{ fontWeight: '400' }}>
          {contentCount}
        </Typography>
      </Grid>

      <Grid item xs={12}>
        <Typography variant="h5">{contentType}</Typography>
        <div className={classes.contentText}>
          <Typography variant="body2" clasName={classes.title}>
            {description}
          </Typography>
        </div>

        <A href={link} className={classes.link}>
          <Typography variant="body1" className={classes.linkText}>
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
