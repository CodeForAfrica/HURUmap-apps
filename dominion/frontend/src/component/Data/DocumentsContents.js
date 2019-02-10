import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Menu from '@material-ui/icons/Menu';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: '2rem',
    height: 'auto'
  },
  mainGrid: {
    textAlign: 'left',
    margin: '3rem',
    [theme.breakpoints.down('md')]: {
      margin: 0
    }
  },
  title: {
    color: theme.palette.primary.light,
    fontWeight: 'bold',
    opacity: '0.6',
    paddingTop: '1rem'
  },
  button: {},
  subtitleGrid: { paddingTop: '1rem', paddingBottom: '1rem' },
  contentText: { paddingTop: '1rem' },
  link: { textDecoration: 'none' },
  linkText: { paddingTop: '3rem', fontWeight: 'bold' }
});

function DocumentContents({ classes }) {
  return (
    <Grid
      xs={12}
      sm={12}
      md={4}
      lg={4}
      xl={4}
      container
      direction="column"
      justify="flex-start"
      alignItems="flex-start"
      className={classes.mainGrid}
    >
      <Button variant="outlined" color="black">
        <Menu size="large" />
      </Button>
      <div className={classes.subtitleGrid}>
        <Typography variant="body2" clasName={classes.title}>
          sourceAFRICA
        </Typography>
      </div>

      <Typography variant="h1" style={{ fontWeight: '400' }}>
        115,126
      </Typography>
      <Typography variant="h5">Documents</Typography>
      <div className={classes.contentText}>
        <Typography variant="body2" clasName={classes.title}>
          SourceAfrica is Africa&apos;s premier repository for actionable
          documents.
        </Typography>
      </div>

      <a href="/view" className={classes.link}>
        <Typography variant="body1" className={classes.linkText}>
          View documents
        </Typography>
      </a>
    </Grid>
  );
}

DocumentContents.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(DocumentContents);
