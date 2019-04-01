import React, { Component } from 'react';
import PropTypes from 'prop-types';
import classNames from 'classnames';

import KeyboardArrowDown from '@material-ui/icons/KeyboardArrowDown';
import KeyboardArrowUp from '@material-ui/icons/KeyboardArrowUp';

import {
  Grid,
  Button,
  Typography,
  Popper,
  Paper,
  MenuItem
} from '@material-ui/core';
import ClickAwayListener from '@material-ui/core/ClickAwayListener';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  root: {
    display: 'inline-block'
  },
  changeReleaseButton: {
    textAlign: 'left',
    color: '#abca4f',
    border: 0,
    justifyContent: 'space-between',
    paddingLeft: 0,
    [theme.breakpoints.up('md')]: {
      marginLeft: '50px'
    }
  },
  releasesMenuItem: {
    width: '9.375rem',
    maxWidth: '9.375rem'
  },
  changeReleaseHeroButton: {
    padding: 0,
    color: '#e7e452',
    [theme.breakpoints.up('md')]: {
      marginRight: -theme.spacing.unit * 0.5,
      marginLeft: 0
    }
  },
  p: {
    fontWeight: '500',
    textTransform: 'capitalize',
    color: 'inherit',
    paddingLeft: theme.spacing.unit * 2,
    [theme.breakpoints.down('sm')]: {
      width: '100%',
      textAlign: 'left',
      lineHeight: '7em'
    }
  },
  KeyboardArrow: {
    paddingLeft: '5px',
    color: 'inherit',
    cursor: 'pointer'
  }
});
class ReleaseDropdown extends Component {
  constructor(props) {
    super(props);

    this.state = {
      menuOpen: false
    };

    this.toggleReleasesMenu = this.toggleReleasesMenu.bind(this);
    this.closeReleaseMenu = this.closeReleaseMenu.bind(this);
  }

  closeReleaseMenu(event) {
    if (this.changeReleaseButton.contains(event.target)) {
      return;
    }
    this.setState({ menuOpen: false });
  }

  toggleReleasesMenu() {
    this.setState(prevState => ({
      menuOpen: !prevState.menuOpen
    }));
  }

  render() {
    const { classes, primaryReleases, fromHero } = this.props;
    const { menuOpen } = this.state;

    return (
      <Grid className={classes.root}>
        <Button
          buttonRef={c => {
            this.changeReleaseButton = c;
          }}
          disableFocusRipple
          disableRipple
          disableTouchRipple
          className={classNames(classes.changeReleaseButton, {
            [classes.changeReleaseHeroButton]: fromHero
          })}
          onClick={() => {
            this.toggleReleasesMenu();
          }}
        >
          <Typography variant="body2" className={classes.p}>
            Change release
          </Typography>
          {menuOpen ? (
            <KeyboardArrowUp
              fontSize="small"
              className={classes.KeyboardArrow}
            />
          ) : (
            <KeyboardArrowDown
              fontSize="small"
              className={classes.KeyboardArrow}
            />
          )}
        </Button>
        <Popper
          anchorEl={this.changeReleaseButton}
          open={menuOpen}
          onClose={this.closeReleaseMenu}
        >
          <ClickAwayListener onClickAway={this.closeReleaseMenu}>
            <Paper>
              <MenuItem
                component="a"
                href={`?release=${primaryReleases.active.year}`}
                className={classes.releasesMenuItem}
              >
                {primaryReleases.active.citation}
              </MenuItem>
              {primaryReleases.other.length
                ? primaryReleases.other.map(release => (
                    <MenuItem
                      key={release.year}
                      component="a"
                      href={`?release=${release.year}`}
                      className={classes.releasesMenuItem}
                    >
                      {release.citation}
                    </MenuItem>
                  ))
                : null}
            </Paper>
          </ClickAwayListener>
        </Popper>
      </Grid>
    );
  }
}

ReleaseDropdown.propTypes = {
  classes: PropTypes.shape({}).isRequired,
  fromHero: PropTypes.bool,
  primaryReleases: PropTypes.shape({}).isRequired
};

ReleaseDropdown.defaultProps = {
  fromHero: false
};

export default withStyles(styles)(ReleaseDropdown);
