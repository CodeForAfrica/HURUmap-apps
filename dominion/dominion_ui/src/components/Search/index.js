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
    paddingTop: '50px',
    [theme.breakpoints.up('md')]: {
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
    const { geography } = this.state;
    let countryCode;
    let results = [];

    if (searchTerm !== '') {
      results = geography.filter(g =>
        g.name.match(new RegExp(searchTerm, 'i'))
      );
      if (window.selected_country) {
        countryCode = window.selected_country.code;
        results = await api.getGeography(countryCode, searchTerm);
      }
    }
    this.setState({ results, geography });
  }

  handleSearch(searchTerm) {
    this.setState({ results: [], searchTerm });
  }

  render() {
    const {
      classes,
      children,
      handleIconClick,
      placeholder,
      icon,
      isCompareSearch
    } = this.props;
    const { results, searchTerm } = this.state;

    return (
      <Grid
        container
        direction="column"
        wrap="nowrap"
        className={isCompareSearch ? null : classes.root}
      >
        <SearchBar
          value={searchTerm}
          handleValueChange={this.handleSearch}
          handleIconClick={handleIconClick}
          placeholder={placeholder}
          icon={icon}
        />
        {results.length ? (
          <SearchResults results={results} isCompareSearch={isCompareSearch} />
        ) : (
          children
        )}
      </Grid>
    );
  }
}

Search.propTypes = {
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired,
  handleIconClick: PropTypes.isRequired,
  placeholder: PropTypes.isRequired,
  isCompareSearch: PropTypes.bool.isRequired,
  icon: PropTypes.isRequired
};

export default withStyles(styles)(Search);
