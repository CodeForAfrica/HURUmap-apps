import React from 'react';
import PropTypes from 'prop-types';

import Close from '@material-ui/icons/Close';

import { withStyles } from '@material-ui/core/styles';
import Input from '@material-ui/core/Input';
import { Grid } from '@material-ui/core';
import background from '../../assets/images/bg/background.png';
import Results from './Results';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: theme.spacing.unit * 4,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  searchContent: {
    zIndex: 1300,
    flexGrow: 1,
    height: '100vh',
    '&:focus': {
      outline: 0
    },
    [theme.breakpoints.up('lg')]: {
      height: '60vh'
    },
    [theme.breakpoints.up('lg')]: {
      height: '60vh',
      paddingLeft: theme.spacing.unit * 14.5
    },
    [theme.breakpoints.down('md')]: {
      backgroundPosition: 'right',
      backgroundSize: 'auto'
    },
    paddingLeft: theme.spacing.unit * 34,
    paddingRight: theme.spacing.unit * 14,
    paddingTop: theme.spacing.unit * 14
  },
  formContainer: {
    flexGrow: 1,
    padding: theme.spacing.unit * 14,
    width: '80%'
  },
  searchField: {
    marginLeft: theme.spacing.unit,
    marginRight: theme.spacing.unit,
    color: 'white',
    width: '100%',
    borderBottom: '2px solid #fff',
    padding: '15px 0 4px',
    fontFamily: theme.typography.fontFamily,
    fontSize: '18px',
    fontWeight: '600'
  },
  icon: {
    color: '#fff'
  }
});

function SearchOverlay({ classes, onClose }) {
  return (
    <Grid
      container
      direction="row"
      spacing={40}
      justify="space-between"
      className={classes.searchContent}
    >
      <Grid item xs={1} />
      <Grid item xs={10}>
        <form noValidate autoComplete="off">
          <Input className={classes.searchField} />{' '}
        </form>
      </Grid>
      <Grid item xs={1}>
        <Close
          onClick={onClose}
          size="small"
          style={{
            color: 'white'
          }}
        />
      </Grid>
      <Grid item xs={12}>
        <Results />
      </Grid>
    </Grid>
  );
}

SearchOverlay.propTypes = {
  classes: PropTypes.shape().isRequired,
  onClose: PropTypes.func.isRequired
};

export default withStyles(styles)(SearchOverlay);
