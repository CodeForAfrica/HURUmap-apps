import React from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';
import InputBase from '@material-ui/core/InputBase';
import { Grid, IconButton } from '@material-ui/core';
import withWidth, { isWidthUp } from '@material-ui/core/withWidth';
import back from '../../assets/images/icons/back.svg';
import search from '../../assets/images/icons/location.svg';

const styles = theme => ({
  root: {
    flexGrow: 1,
    [theme.breakpoints.down('sm')]: {
      borderBottom: '2px solid white'
    }
  },
  searchField: {
    marginLeft: theme.spacing.unit,
    marginRight: theme.spacing.unit,
    color: 'white',
    width: '100%',
    fontFamily: theme.typography.fontFamily,
    fontSize: '18px',
    fontWeight: '600',
    [theme.breakpoints.up('md')]: {
      padding: '15px 0 4px',
      borderBottom: '2px solid white'
    }
  },
  iconButton: {
    padding: 0
  },
  resultsContainer: {
    [theme.breakpoints.up('sm')]: {
      padding: '47px'
    }
  }
});

function SearchBar({
  classes,
  value,
  width,
  handleIconClick,
  handleValueChange
}) {
  return (
    <Grid container sm={12} wrap="nowrap" className={classes.root}>
      <InputBase
        autoFocus
        value={value}
        className={classes.searchField}
        onChange={event => {
          const { value: searchTerm } = event.target;
          handleValueChange(searchTerm);
        }}
      />
      <IconButton
        className={classes.iconButton}
        aria-label="Search"
        onClick={handleIconClick}
      >
        <img
          alt="Search"
          src={isWidthUp('md', width) ? back : search}
          className={classes.searchIcon}
        />
      </IconButton>
    </Grid>
  );
}

SearchBar.propTypes = {
  classes: PropTypes.shape().isRequired,
  handleValueChange: PropTypes.func.isRequired,
  handleIconClick: PropTypes.func.isRequired,
  width: PropTypes.isRequired,
  value: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(SearchBar));
