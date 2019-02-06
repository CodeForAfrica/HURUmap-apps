import React from 'react';
import PropTypes from 'prop-types';

import { Grid, InputBase, IconButton } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import SearchIcon from '@material-ui/icons/Search';

const styles = theme => ({
  search: {
    flexGrow: 1,
    position: 'relative',
    border: 0,
    marginRight: theme.spacing.unit * 2,
    marginLeft: 0,
    width: '120px',
    [theme.breakpoints.up('xs')]: {
      marginLeft: theme.spacing.unit * 3,
      width: 'auto',
      borderBottom: '2px solid white'
    },
    [theme.breakpoints.up('md')]: {
      marginLeft: theme.spacing.unit * 3,
      width: 'auto',
      borderBottom: 0
    }
  },
  searchIcon: {
    [theme.breakpoints.up('md')]: {
      float: 'left'
    }
  },
  input: {
    marginLeft: 8,
    flex: 1,
    color: 'white',
    '&::placeholder': {
      visibility: 'hidden'
    }
  },
  iconButton: {
    padding: 10,
    [theme.breakpoints.up('sm')]: {
      position: 'absolute',
      float: 'left'
    }
  }
});

function Search({ classes }) {
  return (
    <Grid className={classes.search}>
      <InputBase className={classes.input} />
      <IconButton className={classes.iconButton} aria-label="Search">
        <SearchIcon color="primary" className={classes.searchIcon} />
      </IconButton>
    </Grid>
  );
}

Search.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Search);
