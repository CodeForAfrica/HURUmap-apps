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
    paddingTop: '4.9375rem', // 79px/16paddingTop: '4.9375rem 0', // 79px/16
    paddingBottom: '4.9375rem' // 79px/16
  },
  dataWrapper: {
    paddingTop: '3.675rem',
    backgroundColor: '#fff',
    backgroundImage: `url(${databg})`,
    backgroundSize: 'cover',
    backgroundRepeat: 'no-repeat',
    height: '31.25rem', // 500px / 16
    paddingLeft: '1.875rem',
    paddingRight: '1.875rem',
    backgroundPosition: 'right 6.5rem center',
    [theme.breakpoints.up('md')]: {
      width: '31.25rem',
      marginLeft: '-5rem',
      paddingLeft: 0,
      paddingRight: 0,
      backgroundPosition: 'center'
    },
    [theme.breakpoints.up('lg')]: {
      paddingLeft: '5rem' // 80px / 16
    }
  },
  highlight: {
    marginLeft: 0,
    height: '2.5rem',
    background: '#e7e452',
    [theme.breakpoints.up('md')]: {
      width: '21.25rem' // 340px / 16
    }
  },
  img: {
    width: '100%',
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    [theme.breakpoints.up('md')]: {
      width: '31.25rem', // .75 of lg
      height: '25rem' // 400px / 16
    }
  },
  imageHighlight: {
    width: '60%',
    display: 'flex',
    alignItems: 'flex-end'
  },
  documentData: {
    [theme.breakpoints.up('md')]: {
      paddingTop: '3.5625rem',
      paddingLeft: '3.75rem'
    }
  },
  datasetData: {
    paddingLeft: '1.875rem',
    paddingRight: '1.875rem',
    marginTop: '-8rem',
    [theme.breakpoints.up('md')]: {
      paddingTop: '7.02rem',
      paddingLeft: '3.75rem',
      paddingRight: 0,
      marginTop: 0
    }
  }
});

function Data({ classes }) {
  return (
    <Grid container className={classes.root}>
      <Grid container item md={9} lg={9} xl={9} className={classes.dataWrapper}>
        <Hidden smDown>
          <Grid
            item
            md={8}
            lg={8}
            xl={8}
            direction="column"
            className={classes.imageHighlight}
          >
            <div className={classes.highlight} />
            <div className={classes.img} />
          </Grid>
        </Hidden>
        <Grid item md={4} lg={4} xl={4} className={classes.documentData}>
          <DocumentsContent />
        </Grid>
      </Grid>
      <Grid container item md={3} lg={3} xl={3} className={classes.datasetData}>
        <DatasetsContent />
      </Grid>
    </Grid>
  );
}

Data.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(Data);
