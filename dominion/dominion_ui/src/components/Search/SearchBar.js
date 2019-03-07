import React from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';
import InputBase from '@material-ui/core/InputBase';
import { IconButton } from '@material-ui/core';
import withWidth, { isWidthUp } from '@material-ui/core/withWidth';
import back from '../../assets/images/icons/back.svg';
import search from '../../assets/images/icons/location.svg';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  searchField: {
    marginLeft: theme.spacing.unit,
    marginRight: theme.spacing.unit,
    color: 'white',
    width: '100%',
    padding: '15px 0 4px',
    fontFamily: theme.typography.fontFamily,
    fontSize: '18px',
    fontWeight: '600',
    [theme.breakpoints.up('md')]: {
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

function SearchBar({ classes, searchTerm, onToggle, width, onSearch }) {
  return (
    <React.Fragment>
      <InputBase
        autoFocus
        value={searchTerm}
        className={classes.searchField}
        onChange={event => {
          const { value } = event.target;
          onSearch(value);
        }}
      />
      <IconButton
        className={classes.iconButton}
        aria-label="Search"
        onClick={onToggle}
      >
        <img
          alt="Search"
          src={isWidthUp('md', width) ? back : search}
          className={classes.searchIcon}
        />
      </IconButton>
    </React.Fragment>
  );
}

SearchBar.propTypes = {
  classes: PropTypes.shape().isRequired,
  onToggle: PropTypes.func.isRequired,
  onSearch: PropTypes.func.isRequired,
  width: PropTypes.isRequired,
  searchTerm: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(SearchBar));
