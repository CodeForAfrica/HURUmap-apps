import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Hidden } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import DocumentsContent from './DocumentsContents';
import DatasetsContent from './DatasetsContent';

import databg from '../../assets/images/bg/databg.png';
import background from '../../assets/images/kaitlyn-baker-422999-unsplash.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: '#fff',
    padding: '5.64rem 0' // 79px/14
  },
  dataWrapper: {
    paddingLeft: '5.7rem', // 80px / 14
    paddingTop: '4.2rem',
    backgroundColor: '#fff',
    backgroundImage: `url(${databg})`,
    backgroundRepeat: 'no-repeat',
    [theme.breakpoints.up('md')]: {
      height: '35.7rem'
    }
  },
  highlight: {
    marginLeft: 'auto',
    marginRight: 0,
    height: '2.5rem',
    background: '#e7e452',
    [theme.breakpoints.up('md')]: {
      width: '15.9375rem' // .75 of lg
    },
    [theme.breakpoints.up('lg')]: {
      width: '21.25rem' // 340px / 16
    }
  },
  img: {
    width: '100%',
    height: '28.5rem', // 400px / 16
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    [theme.breakpoints.up('md')]: {
      width: '35.7rem' // .75 of lg
    }
  },
  documentData: {
    marginTop: '3.6875rem' // 59px / 16,
  }
});

function Data({ classes }) {
  return (
    <Grid container className={classes.root}>
      <Grid container item md={9} className={classes.dataWrapper}>
        <Hidden smDown>
          <Grid>
            <Grid item className={classes.highlight} />
            <Grid item className={classes.img} />
          </Grid>
        </Hidden>
        <DocumentsContent className={classes.documentData} />
      </Grid>
      <Grid container item md={3}>
        <DatasetsContent />
      </Grid>
    </Grid>
  );
}

Data.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Data);
