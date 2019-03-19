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
    const {
      dominion: { countries }
    } = this.props;
    const geography = Object.keys(countries).map(slug =>
      Object.assign({}, countries[slug], { slug, type: 'country' })
    );
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
    const {
      mapit: { codeType }
    } = api;
    const {
      dominion: { selectedCountry }
    } = this.props;
    const { geography } = this.state;
    let results = [];

    if (searchTerm !== '') {
      results = geography.filter(g =>
        g.name.match(new RegExp(searchTerm, 'i'))
      );
      if (selectedCountry) {
        const { code: countryCode } = selectedCountry;
        results = await api.getGeography(countryCode, searchTerm);
      }
    }
    this.setState({ codeType, results, geography });
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
      thisGeoId,
      isComparisonSearch
    } = this.props;
    const { codeType, results, searchTerm } = this.state;

    return (
      <Grid
        container
        direction="column"
        wrap="nowrap"
        className={isComparisonSearch ? null : classes.root}
      >
        <SearchBar
          autoFocus
          value={searchTerm}
          handleValueChange={this.handleSearch}
          handleIconClick={handleIconClick}
          placeholder={placeholder}
          isComparisonSearch={isComparisonSearch}
          icon={icon}
        />
        {results.length ? (
          <SearchResults
            results={results}
            codeType={codeType}
            isComparisonSearch={isComparisonSearch}
            thisGeoId={thisGeoId}
          />
        ) : (
          children
        )}
      </Grid>
    );
  }
}

Search.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  dominion: PropTypes.shape({}).isRequired,
  handleIconClick: PropTypes.func.isRequired,
  placeholder: PropTypes.string,
  isComparisonSearch: PropTypes.bool,
  icon: PropTypes.string,
  thisGeoId: PropTypes.string
};

Search.defaultProps = {
  thisGeoId: '',
  icon: null,
  placeholder: '',
  isComparisonSearch: false
};

export default withStyles(styles)(Search);
