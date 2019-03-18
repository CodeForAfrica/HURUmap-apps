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
  name: {
    margin: 0,
    fontWeight: '600',
    fontSize: '30px',
    textTransform: 'capitalize',
    color: 'inherit',
    [theme.breakpoints.up('sm')]: {
      fontSize: '35px'
    }
  }
});

const maxResults = 6;

function SearchResults({ classes, codeType, results }) {
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
                  ? `/${result.slug}`
                  : `/profiles/${result.codes[codeType]}`
              }
            >
              <Grid container direction="row" alignItems="baseline">
                <Typography
                  className={classes.level}
                  variant="body2"
                  component="p"
                >
                  {result.type.toLowerCase()}
                </Typography>
                <Typography
                  className={classes.name}
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
  codeType: PropTypes.string.isRequired,
  results: PropTypes.isRequired
};

export default withStyles(styles)(SearchResults);
