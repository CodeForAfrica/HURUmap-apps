import React from 'react';

import { Grid, Toolbar, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import SearchOutlined from '@material-ui/icons/SearchOutlined';
import KeyboardArrowDownOutlined from '@material-ui/icons/KeyboardArrowDownOutlined';

import logo from '../../assets/images/logos/dominion-logo.png';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  toolbar: {
    margin: '4rem'
  },
  appbar: {
    backgroundColor: 'transparent',
    border: 0
  },
  img: {
    maxWidth: '100%',
    height: 'auto'
  },
  text: {
    color: theme.palette.primary.main
  },
  fa: {
    transition: 'all .5s ease-in-out',
    color: '#fff',
    ' &:hover': {
      transform: 'scale(1.3)',
      color: theme.palette.primary.main
    }
  },
  links: {
    color: theme.palette.primary.main,
    textDecoration: 'none'
  },
  icon: {
    color: 'white',
    fontSize: 30
  }
});
function HeaderNav({ classes }) {
  return (
    <nav postion="static" className={classes.appbar}>
      <Toolbar className={classes.toolbar}>
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
              <Typography variant="body1" className={classes.text}>
                About
              </Typography>
            </a>
          </Grid>

          <Grid item>
            <a href="/" className={classes.links}>
              <Typography variant="body1" className={classes.text}>
                Showcase
              </Typography>
            </a>
          </Grid>

          <Grid item>
            <a href="/" className={classes.links}>
              <Typography variant="body1" className={classes.text}>
                Resources
              </Typography>
            </a>
          </Grid>

          <Grid item>
            <a href="/" className={classes.links}>
              <Typography variant="body1" className={classes.text}>
                {' '}
                Contact
              </Typography>
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
          <Grid item>
            <Grid
              container
              direction="row"
              justify="space-between"
              alignItems="center"
            >
              <Typography variant="body1" className={classes.text}>
                Countries
              </Typography>
              <KeyboardArrowDownOutlined className={classes.icon} />
            </Grid>
          </Grid>
          <Grid item className={classes.text}>
            <SearchOutlined />
          </Grid>
        </Grid>
      </Toolbar>
    </nav>
  );
}

export default withStyles(styles)(HeaderNav);
