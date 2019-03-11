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
  }

  async componentDidMount() {
    const api = createAPI();
    let geography = [];
    if (window.selected_country) {
      geography = await api.getGeography(5656);
    } else {
      geography = Object.values(window.dominion_countries).map(country => ({
        name: country.name,
        type: 'country'
      }));
    }

    this.setState({
      geography
    });
  }

  handleSearch(searchTerm) {
    const { geography } = this.state;
    if (searchTerm !== '') {
      const results = geography.filter(g =>
        g.name.match(new RegExp(searchTerm, 'i'))
      );
      this.setState({ results, searchTerm });
    } else {
      this.setState({ results: [], searchTerm });
    }
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
