import React from 'react';
import PropTypes from 'prop-types';
import { Grid, List, ListItem } from '@material-ui/core';

import { withStyles } from '@material-ui/core/styles';

import slugify from '../../slugify';

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
  list: {
    width: '100%',
    [theme.breakpoints.up('sm')]: {
      width: '500px'
    }
  },
  listItem: {
    '&:hover': {
      color: '#e7e452'
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
    textAlign: 'right'
  },
  name: {
    margin: 0,
    fontWeight: '600',
    fontSize: '30px',
    [theme.breakpoints.up('sm')]: {
      fontSize: '35px'
    }
  }
});

const maxResults = 6;
const codeType = window.MAPIT.code_type;
function SearchResults({ classes, results }) {
  return (
    <Grid container sm={12} className={classes.root}>
      <Grid container direction="row" justify="flex-end">
        <List className={classes.list}>
          {results.slice(0, maxResults).map(result => (
            <ListItem
              button
              disableGutters
              key={result.id}
              className={classes.listItem}
              component="a"
              href={
                result.type.toLowerCase() === 'country'
                  ? `/${slugify(result.name)}`
                  : `/profiles/${result.codes[codeType]}`
              }
            >
              <Grid container direction="row" alignItems="baseline">
                <p className={classes.level}>
                  {result.type[0].toUpperCase() +
                    result.type.slice(1).toLowerCase()}
                </p>
                <p className={classes.name}>
                  {result.name[0].toUpperCase() +
                    result.name.slice(1).toLowerCase()}
                </p>
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
  results: PropTypes.isRequired
};

export default withStyles(styles)(SearchResults);
