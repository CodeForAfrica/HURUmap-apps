import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import land from '../../assets/images/About/land.png';

// import background from '../../assets/images/bg/background.png';
import DocumentsContents from './DocumentsContents';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: '2rem',
    height: 'auto'
    /* backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover' */
  },
  img: {
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '20.875rem',
      height: 'auto',

      // TODO(kilemens): There is a gap between the two components. This is a temporary fix.
      marginBottom: theme.spacing.unit * -0.5
    },
    [theme.breakpoints.up('lg')]: {
      width: '25.5rem'
    }
  },
  highlight: {
    width: '15rem',
    height: '2rem',
    background: '#e7e452'
  }
});

function Documents({ classes }) {
  return (
    <Grid
      container
      xs={12}
      sm={8}
      md={8}
      lg={8}
      xl={8}
      className={classes.root}
    >
      <Grid
        container
        spacing={24}
        direction="row"
        justify="center"
        alignItems="center"
      >
        <Grid>
          <Grid item xs={12}>
            <div className={classes.highlight} />
          </Grid>
          <Grid item xs={12}>
            <img src={land} alt="land" className={classes.img} />
          </Grid>
        </Grid>
        <DocumentsContents />
      </Grid>
    </Grid>
  );
}

Documents.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Documents);
