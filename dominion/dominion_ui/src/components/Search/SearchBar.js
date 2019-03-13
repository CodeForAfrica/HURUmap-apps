import React from 'react';
import PropTypes from 'prop-types';
import classNames from 'classnames';
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
    fontSize: '0.813em',
    fontWeight: '600',
    [theme.breakpoints.up('md')]: {
      padding: '15px 0 4px',
      borderBottom: '2px solid white'
    }
  },
  searchFieldInput: {
    '&::placeholder': {
      fontFamily: theme.typography.fontFamily,
      color: 'white',
      opacity: 1,
      fontSize: '0.813em',
      fontWeight: '600'
    }
  },
  compareText: {
    fontFamily: theme.typography.fontFamily,
    color: 'white',
    opacity: 1,
    fontSize: '1.5em',
    fontWeight: '600'
  },
  rootBorderBottom: {
    borderBottom: '2px solid white !important'
  },
  searchFieldNoBorderBottom: {
    borderBottom: 'none !important'
  },
  searchFieldNoMargin: {
    marginLeft: 0,
    marginRight: 0
  },
  iconButton: {
    padding: 0
  },
  iconButtonDropdown: {
    marginLeft: -theme.spacing.unit * 4
  },
  resultsContainer: {
    [theme.breakpoints.up('sm')]: {
      padding: '47px'
    }
  }
});

function SearchBar({
  primary,
  classes,
  placeholder,
  value,
  width,
  icon,
  handleIconClick,
  handleValueChange,
  isComparisonSearch,
  autoFocus
}) {
  let searchBarIcon = icon;
  if (!searchBarIcon) {
    searchBarIcon = isWidthUp('md', width) ? back : search;
  }
  return (
    <Grid
      container
      sm={12}
      wrap="nowrap"
      className={classNames(classes.root, {
        [classes.rootBorderBottom]: primary
      })}
    >
      <InputBase
        autoFocus={autoFocus}
        value={value}
        placeholder={placeholder}
        classes={{ placeholder: classes.compareText }}
        inputProps={{ className: classes.searchFieldInput }}
        className={classNames(
          classes.searchField,
          { [classes.searchFieldNoBorderBottom]: primary },
          { [classes.searchFieldNoMargin]: isComparisonSearch }
        )}
        onChange={event => {
          const { value: searchTerm } = event.target;
          if (handleValueChange) {
            handleValueChange(searchTerm);
          }
        }}
      />
      <IconButton
        disableRipple
        disableTouchRipple
        focusRipple={false}
        style={{ backgroundColor: 'transparent' }}
        className={classNames(classes.iconButton, {
          [classes.iconButtonDropdown]: isComparisonSearch
        })}
        aria-label="Search"
        onClick={handleIconClick}
      >
        <img alt="Search" src={searchBarIcon} className={classes.searchIcon} />
      </IconButton>
    </Grid>
  );
}

SearchBar.propTypes = {
  classes: PropTypes.shape().isRequired,
  handleValueChange: PropTypes.func.isRequired,
  icon: PropTypes.string.isRequired,
  handleIconClick: PropTypes.func.isRequired,
  width: PropTypes.isRequired,
  value: PropTypes.isRequired,
  primary: PropTypes.bool,
  placeholder: PropTypes.string,
  autoFocus: PropTypes.bool,
  isComparisonSearch: PropTypes.bool
};

SearchBar.defaultProps = {
  autoFocus: true,
  placeholder: '',
  isComparisonSearch: false,
  primary: false
};

export default withWidth()(withStyles(styles)(SearchBar));
