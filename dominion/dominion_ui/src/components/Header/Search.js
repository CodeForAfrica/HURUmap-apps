import React from 'react';
import PropTypes from 'prop-types';

import { Grid, InputBase, IconButton } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import SearchIcon from '@material-ui/icons/Search';

const styles = theme => ({
  root: {
    border: 0,
    borderBottom: 0,
    width: 'auto',
    [theme.breakpoints.down('xs')]: {
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
    [theme.breakpoints.down('xs')]: {
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
    '&::placeholder': {
      visibility: 'hidden'
    },
    [theme.breakpoints.down('xs')]: {
      display: 'inline-block'
    }
  }
});

function Search({ classes }) {
  return (
    <Grid container wrap="nowrap" className={classes.root}>
      <InputBase placeholder="Search" className={classes.input} />
      <IconButton className={classes.iconButton} aria-label="Search">
        <SearchIcon className={classes.searchIcon} />
      </IconButton>
    </Grid>
  );
}

Search.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Search);
