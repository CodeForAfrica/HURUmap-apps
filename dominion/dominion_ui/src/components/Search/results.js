import React from 'react';
import PropTypes from 'prop-types';
import { Grid, List, ListItem } from '@material-ui/core';

import { withStyles } from '@material-ui/core/styles';

import weakKey from 'weak-key';

const styles = theme => ({
  root: {
    flexGrow: 1,
    fontSize: '14px',
    fontWeight: '500',
    color: 'white',
    fontFamily: theme.typography.fontFamily
  },
  list: {
    width: '500px',
    [theme.breakpoints.up('lg')]: {
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
  denomination: {
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
    fontSize: '35px',
    fontWeight: '600'
  }
});

const maxResults = 6;

function Results({ classes, results }) {
  return (
    <div className={classes.root}>
      <Grid container direction="row" justify="flex-end">
        <List className={classes.list}>
          {results.slice(0, maxResults).map(result => (
            <ListItem key={weakKey(result)} className={classes.listItem} button>
              <Grid container direction="row" alignItems="baseline">
                <p className={classes.denomination}>{result.denomination}</p>
                <p className={classes.name}>{result.name}</p>
              </Grid>
            </ListItem>
          ))}
        </List>
      </Grid>
    </div>
  );
}

Results.propTypes = {
  classes: PropTypes.shape().isRequired,
  results: PropTypes.isRequired
};

export default withStyles(styles)(Results);
