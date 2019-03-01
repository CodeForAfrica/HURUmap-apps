import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import withWidth, { isWidthDown } from '@material-ui/core/withWidth';

import background from '../../assets/images/bg/background.png';
import search from '../../assets/images/icons/location.svg';

import SearchBar from '../Search/SearchBar';
import SearchResults from '../Search/SearchResults';
import Modal from '../Modal';

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
  searchBar: {
    [theme.breakpoints.down('sm')]: {
      borderBottom: '2px solid white'
    }
  },
  resultsContainer: {
    [theme.breakpoints.up('sm')]: {
      padding: '47px'
    }
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

class Search extends Component {
  constructor(props) {
    super(props);

    this.state = {
      closeModal: false,
      results: []
    };

    this.handleSearch = this.handleSearch.bind(this);
    this.handleToggle = this.handleToggle.bind(this);
  }

  handleSearch(event) {
    if (event.target.value !== '') {
      const results = exampleData.filter(d => d.name.match(event.target.value));
      this.setState({ results });
    } else {
      this.setState({ results: [] });
    }
  }

  handleToggle() {
    this.setState({ closeModal: true });
  }

  render() {
    const { classes, width, children } = this.props;
    const { results, closeModal } = this.state;

    const SearchBarElement = onToggle => (
      <Grid container sm={12} wrap="nowrap" className={classes.searchBar}>
        <SearchBar onSearch={this.handleSearch} onToggle={onToggle} />
      </Grid>
    );
    const ResultsElement = (
      <Grid container sm={12} className={classes.resultsContainer}>
        <SearchResults results={results} />
      </Grid>
    );
    const SearchModalContent = ({ toggleModal }) => (
      <Grid container direction="column" wrap="nowrap" className={classes.root}>
        {SearchBarElement(toggleModal)}
        {ResultsElement}
      </Grid>
    );
    return (
      <React.Fragment>
        {isWidthDown('sm', width) ? (
          <React.Fragment>
            {SearchBarElement()}
            {results.length > 0 ? ResultsElement : children}
          </React.Fragment>
        ) : (
          <React.Fragment>
            <Modal
              activatorLabel="Search"
              activatorIconOpen={search}
              activatorIconClose={search}
              close={closeModal}
            >
              <SearchModalContent />
            </Modal>
            {children}
          </React.Fragment>
        )}
      </React.Fragment>
    );
  }
}

Search.propTypes = {
  width: PropTypes.isRequired,
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Search));
