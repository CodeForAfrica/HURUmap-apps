import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import SearchBar from './SearchBar';
import SearchResults from './SearchResults';

import createAPI from '../../api';

const styles = theme => ({
  root: {
    flexGrow: 1,
    [theme.breakpoints.up('md')]: {
      paddingTop: '50px',
      paddingLeft: '100px',
      paddingRight: '100px'
    },
    [theme.breakpoints.up('lg')]: {
      paddingTop: '100px'
    }
  }
});

class Search extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      searchTerm: '',
      geography: [],
      results: []
    };
    this.handleSearch = this.handleSearch.bind(this);
    this.loadSuggestions = this.loadSuggestions.bind(this);
  }

  componentDidMount() {
    let geography = [];
    const countries = window.dominion_countries;
    geography = Object.keys(window.dominion_countries).map(slug => ({
      slug,
      name: countries[slug].name,
      type: 'country'
    }));
    this.setState({ geography });
  }

  componentDidUpdate(prevProps, prevState) {
    const { searchTerm } = this.state;
    if (prevState.searchTerm !== searchTerm) {
      this.loadSuggestions(searchTerm);
    }
  }

  async loadSuggestions(searchTerm) {
    const api = createAPI();
    let { geography } = this.state;
    let countryCode;
    if (window.selected_country && searchTerm !== '') {
      countryCode = window.selected_country.code;
      geography = await api.getGeography(countryCode, searchTerm);
    }
    const results = geography.filter(g =>
      g.name.match(new RegExp(`^${searchTerm}`, 'i'))
    );
    this.setState({ geography, results });
  }

  handleSearch(searchTerm) {
    this.setState({ searchTerm });
  }

  render() {
    const { classes, children, handleIconClick } = this.props;
    const { results, searchTerm } = this.state;

    return (
      <Grid container direction="column" wrap="nowrap" className={classes.root}>
        <SearchBar
          value={searchTerm}
          handleValueChange={this.handleSearch}
          handleIconClick={handleIconClick}
        />
        {results.length ? <SearchResults results={results} /> : children}
      </Grid>
    );
  }
}

Search.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired,
  handleIconClick: PropTypes.isRequired
};

export default withStyles(styles)(Search);
