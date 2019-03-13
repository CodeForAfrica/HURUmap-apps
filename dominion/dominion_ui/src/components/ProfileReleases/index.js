import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Button, Typography, Menu, MenuItem } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import arrowDownIcon from '../../assets/images/group-3.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: 'white',
    padding: '3.125em',
    flexWrap: 'wrap',
    justifyContent: 'flex-start',
    [theme.breakpoints.up('md')]: {
      flexWrap: 'nowrap',
      justifyContent: 'center'
    }
  },
  description: {
    order: 2,
    [theme.breakpoints.up('md')]: {
      order: 1
    }
  },
  releaseSelector: {
    order: 1,
    [theme.breakpoints.up('md')]: {
      order: 2
    }
  },
  descriptionTitle: {
    fontFamily: 'Montserrat',
    fontSize: '14px',
    fontWeight: 'bold',
    fontStyle: 'normal',
    fontStretch: 'normal',
    lineHeight: 1.43,
    letterSpacing: 'normal',
    color: '#2c2c2a',
    padding: '8px 0'
  },
  descriptionText: {
    fontFamily: 'Montserrat',
    fontSize: '9px',
    fontStyle: 'normal',
    fontWeight: 500,
    fontStretch: 'normal',
    lineHeight: 2.22,
    letterSpacing: 'normal',
    color: '#2c2c2a',
    opacity: 0.5
  },
  link: {
    opacity: 0.5,
    color: '#2c2c2a !important'
  },
  changeReleaseButton: {
    fontFamily: 'Montserrat',
    fontSize: '0.688em',
    fontWeight: 500,
    fontStyle: 'normal',
    fontStretch: 'normal',
    lineHeight: 2.09,
    letterSpacing: 'normal',
    textAlign: 'left',
    color: '#abca4f',
    justifyContent: 'space-between',
    textTransform: 'capitalize',
    '&:hover': {
      backgroundColor: 'transparent'
    },
    width: '9.375rem',
    paddingLeft: 0,
    [theme.breakpoints.up('md')]: {
      marginLeft: '50px'
    }
  },
  releasesMenuItem: {
    width: '9.375rem',
    maxWidth: '9.375rem'
  }
});

class ProfileReleasesSection extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      menuOpen: false,
      menuAnchorElement: null
    };

    this.toggleReleasesMenu = this.toggleReleasesMenu.bind(this);
  }

  toggleReleasesMenu(menuAnchorElement) {
    this.setState(prevState => ({
      menuOpen: !prevState.menuOpen,
      menuAnchorElement
    }));
  }

  render() {
    const { classes } = this.props;
    const { menuOpen, menuAnchorElement } = this.state;
    const datasetRealeases = window.dataset_releases;

    const Atag = ({ link }) => (
      <a className={classes.link} href={link}>
        {link}
      </a>
    );

    return (
      <Grid container direction="row" className={classes.root}>
        <Grid item className={classes.description}>
          <Typography className={classes.descriptionTitle}>
            Community Survery 2016
          </Typography>
          <Typography className={classes.descriptionText}>
            Municipal Elections 2016: Electoral Commission of South Africa
            (IEC), Municipal election results{' '}
            <Atag link="https://wazimap.co.za/profiles/province-EC-eastern-cape" />
            <br />
            National Elections 2014: Electoral Commission of South Africa (IEC),
            National and provincial election results{' '}
            <Atag link="https://wazimap.co.za/profiles/province-EC-eastern-cape" />
            <br />
            Provincial Elections 2014: Electoral Commission of South Africa
            (IEC), National and provincial election results{' '}
            <Atag link="https://wazimap.co.za/profiles/province-EC-eastern-cape" />
            <br />
            Municipal Elections 2011: Electoral Commission of South Africa
            (IEC), Municipal election results{' '}
            <Atag link="https://wazimap.co.za/profiles/province-EC-eastern-cape" />
            <br />
            Community Survey 2016: Statistics South Africa (2016) South African
            Community Survey 2016. Indicators derived from the full population
            Community Survey.{' '}
            <Atag link="https://wazimap.co.za/profiles/province-EC-eastern-cape" />
            <br />
            Census 2011: Statistics South Africa (2011) South African Population
            Census 2011. Indicators derived from the full population Census{' '}
            <Atag link="https://wazimap.co.za/profiles/province-EC-eastern-cape" />
            <br />
            Police Crime Statistics 2014: South African Police Service{' '}
            <Atag link="https://wazimap.co.za/profiles/province-EC-eastern-cape" />
          </Typography>
        </Grid>
        <Grid item className={classes.releaseSelector}>
          <Button
            disableFocusRipple
            disableRipple
            disableTouchRipple
            className={classes.changeReleaseButton}
            onClick={event => {
              this.toggleReleasesMenu(event.target);
            }}
          >
            Change release
            <img alt="Toggle" src={arrowDownIcon} />
          </Button>
          <Menu
            id="render-props-menu"
            anchorEl={menuAnchorElement}
            open={menuOpen}
            onClose={() => this.toggleReleasesMenu(null)}
          >
            {datasetRealeases
              ? datasetRealeases.map(year => (
                  <MenuItem
                    className={classes.releasesMenuItem}
                    onClick={() => this.toggleReleasesMenu(null)}
                  >
                    {year.toString()}
                  </MenuItem>
                ))
              : null}
          </Menu>
        </Grid>
      </Grid>
    );
  }
}

ProfileReleasesSection.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(ProfileReleasesSection);
