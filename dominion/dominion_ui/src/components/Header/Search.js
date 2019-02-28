import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import withWidth, { isWidthDown } from '@material-ui/core/withWidth';

import search from '../../assets/images/icons/location.svg';

import SearchBar from '../Search/SearchBar';
import SearchOverlay from '../Search';
import Modal from '../Modal';

const styles = theme => ({
  root: {
    border: 0,
    borderBottom: 0,
    width: 'auto',
    [theme.breakpoints.down('sm')]: {
      borderBottom: '2px solid white',
      width: '100%'
    }
  },
  iconButton: {
    padding: 0,
    marginLeft: '127px',
    [theme.breakpoints.down('sm')]: {
      marginLeft: '50px'
    },
    [theme.breakpoints.down('sm')]: {
      marginLeft: 0
    }
  },
  searchIcon: {
    color: '#fff'
  },
  input: {
    flex: 1,
    color: 'white',
    display: 'none',
    width: '100%',
    fontFamily: theme.typography.fontFamily,
    fontWeight: '600',
    fontSize: '14px',
    '&::placeholder': {
      visibility: 'hidden'
    },
    [theme.breakpoints.down('sm')]: {
      display: 'inline-block'
    }
  }
});

function Search({ classes, width }) {
  return (
    <Grid container wrap="nowrap" className={classes.root}>
      {isWidthDown('sm', width) ? (
        <SearchBar />
      ) : (
        <Modal
          activatorLabel="Search"
          activatorIconOpen={search}
          activatorIconClose={search}
          content={<SearchOverlay />}
        />
      )}
    </Grid>
  );
}

Search.propTypes = {
  classes: PropTypes.isRequired,
  width: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Search));
