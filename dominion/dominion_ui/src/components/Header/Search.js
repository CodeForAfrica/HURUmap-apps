import React from 'react';
import PropTypes from 'prop-types';

import { Grid, InputBase, IconButton } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import search from '../../assets/images/icons/location.svg';

const styles = theme => ({
  root: {
    border: 0,
    borderBottom: 0,
    width: 'auto',
    [theme.breakpoints.down('sm')]: {
      borderBottom: '2px solid white',
      padding: '10px',
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

function Search({ classes }) {
  return (
    <Grid container wrap="nowrap" className={classes.root}>
      <InputBase placeholder="Search" className={classes.input} />
      <IconButton className={classes.iconButton} aria-label="Search">
        <img src={search} alt="Search" className={classes.searchIcon} />
      </IconButton>
    </Grid>
  );
}

Search.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Search);
