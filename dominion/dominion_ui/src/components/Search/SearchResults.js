import React from 'react';
import PropTypes from 'prop-types';
import { Grid, List, ListItem, Typography } from '@material-ui/core';

import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  root: {
    flexGrow: 1,
    fontSize: '14px',
    fontWeight: '500',
    color: 'white',
    fontFamily: theme.typography.fontFamily,
    [theme.breakpoints.up('sm')]: {
      padding: '47px 0'
    }
  },
  rootDropdown: {
    color: 'black',
    backgroundColor: 'white',
    paddingTop: theme.spacing.unit,
    paddingBottom: theme.spacing.unit,
    marginTop: theme.spacing.unit,
    marginBottom: theme.spacing.unit
  },
  list: {
    width: '100%',
    [theme.breakpoints.up('sm')]: {
      width: '500px'
    }
  },
  listItem: {
    color: 'white',
    '&:hover': {
      color: '#e7e452'
    }
  },
  listItemDropdown: {
    color: 'black',
    '&:hover': {
      fontWeight: '600'
    }
  },
  selected: {
    color: '#e7e452'
  },
  level: {
    margin: 0,
    fontSize: '14px',
    fontWeight: '600',
    opacity: '0.5',
    marginRight: '20px',
    width: '60px',
    textTransform: 'capitalize',
    textAlign: 'right',
    color: 'inherit'
  },
  levelDropdown: {
    fontSize: '10px',
    fontWeight: '400',
    width: '30%'
  },
  name: {
    margin: 0,
    fontWeight: '600',
    fontSize: '30px',
    textTransform: 'capitalize',
    color: 'inherit',
    [theme.breakpoints.up('sm')]: {
      fontSize: '35px'
    }
  },
  nameDropdown: {
    fontSize: '16px',
    fontWeight: '400'
  }
});

const maxResults = 6;
const codeType = window.MAPIT.code_type;

function renderHref(result, thisGeoId, isComparisonSearch) {
  let href;
  if (isComparisonSearch) {
    href = `/compare/${thisGeoId}/vs/${result.codes[codeType]}/`;
  } else if (result.type.toLowerCase() === 'country') {
    href = `/${result.slug}`;
  } else {
    href = `/profiles/${result.codes[codeType]}`;
  }
  return href;
}

function SearchResults({ classes, results, isComparisonSearch, thisGeoId }) {
  return (
    <Grid
      container
      sm={12}
      className={`${classes.root} ${
        isComparisonSearch ? classes.rootDropdown : null
      }`}
    >
      <Grid container direction="row" justify="flex-end">
        <List className={classes.list}>
          {results.slice(0, maxResults).map(result => (
            <ListItem
              button
              disableGutters
              key={result.id}
              className={
                isComparisonSearch ? classes.listItemDropdown : classes.listItem
              }
              component="a"
              href={renderHref(result, thisGeoId, isComparisonSearch)}
            >
              <Grid container direction="row" alignItems="baseline">
                <Typography
                  className={`${classes.level} ${
                    isComparisonSearch ? classes.levelDropdown : null
                  }`}
                  variant="body2"
                  component="p"
                >
                  {result.type.toLowerCase()}
                </Typography>
                <Typography
                  className={`${classes.name} ${
                    isComparisonSearch ? classes.nameDropdown : null
                  }`}
                  variant="body2"
                  component="p"
                >
                  {result.name.toLowerCase()}
                </Typography>
              </Grid>
            </ListItem>
          ))}
        </List>
      </Grid>
    </Grid>
  );
}

SearchResults.propTypes = {
  classes: PropTypes.shape().isRequired,
  results: PropTypes.isRequired,
  thisGeoId: PropTypes.string,
  isComparisonSearch: PropTypes.isRequired
};

SearchResults.defaultProps = {
  thisGeoId: ''
};

export default withStyles(styles)(SearchResults);
