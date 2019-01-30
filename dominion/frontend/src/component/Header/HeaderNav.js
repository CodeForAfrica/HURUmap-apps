import React from 'react';
import { Grid, Toolbar } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import logo from '../../assets/images/logos/dominion-logo.png';

//import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  appbar: { backgroundColor: 'transparent', border: 0 },
  img: { maxWidth: '100%', height: 'auto' },
  text: { color: theme.palette.primary.main },
  fa: {
    transition: 'all .5s ease-in-out',
    color: '#fff',
    ' &:hover': {
      transform: 'scale(1.3)',
      color: theme.palette.primary.main
    }
  },
  links: { color: theme.palette.primary.main, textDecoration: 'none' }
});
function HeaderNav({ classes }) {
  return (
    <nav postion="static" className={classes.appbar}>
      <Toolbar style={{ margin: '3rem' }}>
        <Grid item xs={4} className={classes.text}>
          <img src={logo} alt="Dominion Logo" className={classes.img} />
        </Grid>
        <Grid
          container
          className={classes.text}
          direction="row"
          justify="space-evenly"
          alignItems="center"
        >
          <Grid item>
            <a href="/" className={classes.links}>
              About
            </a>
          </Grid>
          <Grid item>
            <a href="/" className={classes.links}>
              Showcase
            </a>
          </Grid>
          <Grid item>
            <a href="/" className={classes.links}>
              Resources
            </a>
          </Grid>
          <Grid item>
            <a href="/" className={classes.links}>
              Contact
            </a>
          </Grid>
        </Grid>
        <Grid
          item
          container
          direction="row"
          spacing={40}
          justify="space-evenly"
          alignItems="center"
        >
          <Grid item className={classes.text}>
            Countries
          </Grid>
          <Grid item className={classes.text}>
            search icon
          </Grid>
        </Grid>
      </Toolbar>
    </nav>
  );
}

export default withStyles(styles)(HeaderNav);
