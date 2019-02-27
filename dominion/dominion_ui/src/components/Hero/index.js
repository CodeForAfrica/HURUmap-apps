import React, { Component } from 'react';
import { Grid } from '@material-ui/core';
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';
import Hero from './HomeHero';
import Search from '../Search';
import background from '../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: theme.spacing.unit * 4,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  }
});

class HomeHero extends Component {
  constructor(props) {
    super(props);
    this.state = {
      // showSearch: true
    };
  }

  render() {
    const { classes, showSearch } = this.props;

    return (
      <Grid container item xs={12} className={classes.root}>
        <Search display={showSearch} />
        <Hero display={!showSearch} />
      </Grid>
    );
  }
}

HomeHero.propTypes = {
  classes: PropTypes.isRequired,
  showSearch: PropTypes.isRequired
};

export default withStyles(styles)(HomeHero);
