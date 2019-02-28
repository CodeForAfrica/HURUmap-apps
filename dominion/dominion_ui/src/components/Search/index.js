import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';
import { Grid } from '@material-ui/core';
import background from '../../assets/images/bg/background.png';
import SearchResults from './SearchResults';

import SearchBar from './SearchBar';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: theme.spacing.unit * 4,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    [theme.breakpoints.up('lg')]: {
      paddingTop: '100px',
      paddingLeft: '200px',
      paddingRight: '200px'
    },
    [theme.breakpoints.up('md')]: {
      paddingTop: '50px',
      paddingLeft: '185px',
      paddingRight: '185px'
    }
  },
  formContainer: {
    [theme.breakpoints.down('sm')]: {
      borderBottom: '2px solid white'
    }
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
  icon: {
    color: '#fff'
  },
  resultsContainer: {
    padding: '47px'
  }
});

const exampleData = [
  { denomination: 'District', name: 'Mortruisberg' },
  { denomination: 'Ward', name: 'Moertuin' },
  { denomination: 'Ward', name: 'Mortruisberg' },
  { denomination: 'Region', name: 'Mozem' },
  { denomination: 'Region', name: 'Mortruisberg' },
  { denomination: 'District', name: 'Moertuin' },
  { denomination: 'District', name: 'Mortruisberg' },
  { denomination: 'Ward', name: 'Moertuin' },
  { denomination: 'Ward', name: 'Mortruisberg' },
  { denomination: 'Region', name: 'Mozem' },
  { denomination: 'Region', name: 'Mortruisberg' },
  { denomination: 'District', name: 'Moertuin' }
];

class SearchOverlay extends Component {
  constructor(props) {
    super(props);

    this.state = {
      results: []
    };

    this.handleSearch = this.handleSearch.bind(this);
  }

  handleSearch(event) {
    if (event.target.value !== '') {
      const results = exampleData.filter(d => d.name.match(event.target.value));
      this.setState({ results });
    } else {
      this.setState({ results: [] });
    }
  }

  render() {
    const { classes, onToggle } = this.props;
    const { results } = this.state;
    return (
      <Grid container direction="column" wrap="nowrap" className={classes.root}>
        <Grid container sm={12} wrap="nowrap" className={classes.formContainer}>
          <SearchBar onToggle={onToggle} onSearch={this.handleSearch} />
        </Grid>
        <Grid container sm={12} className={classes.resultsContainer}>
          <SearchResults results={results} />
        </Grid>
      </Grid>
    );
  }
}

SearchOverlay.propTypes = {
  classes: PropTypes.shape().isRequired,
  onToggle: PropTypes.func.isRequired
};

export default withStyles(styles)(SearchOverlay);
