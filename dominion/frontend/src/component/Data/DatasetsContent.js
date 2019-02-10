import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Button } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Menu from '@material-ui/icons/Menu';

const styles = theme => ({
  root: {
    flexGrow: 1,
    [theme.breakpoints.down('md')]: {
      textAlign: 'left'
    }
  },
  title: {
    color: theme.palette.primary.light,
    fontWeight: 'bold',
    paddingTop: '1rem'
  },
  subtitleGrid: { paddingTop: '1rem', paddingBottom: '1rem' },
  contentText: { paddingTop: '1rem' },
  link: { textDecoration: 'none' },
  linkText: { paddingTop: '3rem', fontWeight: 'bold' }
});

function DataSets({ classes }) {
  return (
    <Grid
      container
      xs={12}
      sm={12}
      md={4}
      lg={4}
      xl={4}
      directon="column"
      justify="center"
      alignItems="center"
      className={classes.root}
    >
      <Grid item>
        <Button variant="outlined" color="black">
          <Menu size="large" />
        </Button>
        <div className={classes.subtitleGrid}>
          <Typography variant="body2" clasName={classes.title}>
            openAFRICA
          </Typography>
        </div>
        <Typography variant="h1" style={{ fontWeight: '400' }}>
          3,152
        </Typography>
        <Typography variant="h5">Datasets</Typography>
        <Grid
          item
          xs={12}
          sm={12}
          md={6}
          lg={6}
          xl={6}
          className={classes.contentText}
        >
          <Typography variant="body2" clasName={classes.title}>
            openAFRICA aims to be the largest independent repository of open
            data on the African continent.
          </Typography>
        </Grid>

        <a href="/view" className={classes.link}>
          <Typography variant="body1" className={classes.linkText}>
            View datasets
          </Typography>
        </a>
      </Grid>
    </Grid>
  );
}

DataSets.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(DataSets);
