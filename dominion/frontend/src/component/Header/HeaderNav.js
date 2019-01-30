import React from 'react';
import { Grid, Toolbar, Typography } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import SearchOutlined from '@material-ui/icons/SearchOutlined';
import KeyboardArrowDownOutlined from '@material-ui/icons/KeyboardArrowDownOutlined';

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
  links: { color: theme.palette.primary.main, textDecoration: 'none' },
  icon: { color: 'white' }
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
              <Typography variant="body2" className={classes.text}>
                About
              </Typography>
            </a>
          </Grid>
          <Grid item>
            <a href="/" className={classes.links}>
              <Typography variant="body2" className={classes.text}>
                Showcase
              </Typography>
            </a>
          </Grid>
          <Grid item>
            <a href="/" className={classes.links}>
              <Typography variant="body2" className={classes.text}>
                Resources
              </Typography>
            </a>
          </Grid>
          <Grid item>
            <a href="/" className={classes.links}>
              <Typography variant="body2" className={classes.text}>
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
            <div item direction>
              <Typography variant="body2" className={classes.text}>
                Countries
              </Typography>
              <span>
                <KeyboardArrowDownOutlined className={classes.icon} />
              </span>
            </div>
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
