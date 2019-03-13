import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Button, Typography } from '@material-ui/core';
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
  }
});

function ProfileReleasesSection({ classes }) {
  return (
    <Grid container direction="row" className={classes.root}>
      <Grid item className={classes.description}>
        <Typography className={classes.descriptionTitle}>
          Community Survery 2016
        </Typography>
        <Typography className={classes.descriptionText}>
          Municipal Elections 2016: Electoral Commission of South Africa (IEC),
          Municipal election results{' '}
          <a href="https://wazimap.co.za/profiles/province-EC-eastern-cape">
            https://wazimap.co.za/profiles/province-EC-eastern-cape
          </a>
          <br />
          National Elections 2014: Electoral Commission of South Africa (IEC),
          National and provincial election results{' '}
          <a href="https://wazimap.co.za/profiles/province-EC-eastern-cape">
            https://wazimap.co.za/profiles/province-EC-eastern-cape
          </a>
          <br />
          Provincial Elections 2014: Electoral Commission of South Africa (IEC),
          National and provincial election results{' '}
          <a href="https://wazimap.co.za/profiles/province-EC-eastern-cape">
            https://wazimap.co.za/profiles/province-EC-eastern-cape
          </a>
          <br />
          Municipal Elections 2011: Electoral Commission of South Africa (IEC),
          Municipal election results{' '}
          <a href="https://wazimap.co.za/profiles/province-EC-eastern-cape">
            https://wazimap.co.za/profiles/province-EC-eastern-cape
          </a>
          <br />
          Community Survey 2016: Statistics South Africa (2016) South African
          Community Survey 2016. Indicators derived from the full population
          Community Survey.{' '}
          <a href="https://wazimap.co.za/profiles/province-EC-eastern-cape">
            https://wazimap.co.za/profiles/province-EC-eastern-cape
          </a>
          <br />
          Census 2011: Statistics South Africa (2011) South African Population
          Census 2011. Indicators derived from the full population Census{' '}
          <a href="https://wazimap.co.za/profiles/province-EC-eastern-cape">
            https://wazimap.co.za/profiles/province-EC-eastern-cape
          </a>
          <br />
          Police Crime Statistics 2014: South African Police Service{' '}
          <a href="https://wazimap.co.za/profiles/province-EC-eastern-cape">
            https://wazimap.co.za/profiles/province-EC-eastern-cape
          </a>
        </Typography>
      </Grid>
      <Grid item className={classes.releaseSelector}>
        <Button
          disableFocusRipple
          disableRipple
          disableTouchRipple
          className={classes.changeReleaseButton}
        >
          Change release
          <img alt="Toggle" src={arrowDownIcon} />
        </Button>
      </Grid>
    </Grid>
  );
}

ProfileReleasesSection.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(ProfileReleasesSection);
