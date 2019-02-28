import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Button, Modal } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import herobg from '../../assets/images/bg/hero_bg.png';
import arrow from '../../assets/images/icons/combined-shape.svg';
import map from '../../assets/images/bg/hero_map.png';
import background from '../../assets/images/bg/background.png';
import smallscreenbackground from '../../assets/images/bg/smallscreen_background.png';

import PortalChooser from '../Modal/PortalChooser';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  heroContentGrid: {
    flexGrow: 1,
    backgroundImage: `url(${herobg})`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: 'center',
    backgroundSize: 'auto',
    height: '100vh',
    [theme.breakpoints.up('lg')]: {
      height: '60vh',
      paddingLeft: theme.spacing.unit * 14.5
    },
    [theme.breakpoints.down('md')]: {
      backgroundPosition: 'right',
      backgroundSize: 'auto'
    },
    [theme.breakpoints.down('sm')]: {
      backgroundImage: `url(${smallscreenbackground})`,
      backgroundPosition: 'right top',
      height: 500,
      margin: 0
    }
  },
  titleTextGrid: {
    color: 'white',
    [theme.breakpoints.up('lg')]: {
      paddingLeft: theme.spacing.unit * 9
    },
    [theme.breakpoints.down('sm')]: {
      position: 'absolute',
      margin: '2rem',
      marginTop: 0
    }
  },
  text: {
    color: 'white',
    paddingTop: theme.spacing.unit * 10,
    width: '90%',
    [theme.breakpoints.down('sm')]: {
      fontSize: '3rem',
      paddingTop: 0,
      width: '60%'
    }
  },
  body2: {
    color: 'white',
    textAlign: 'left',
    width: '50%',
    paddingTop: '2rem',
    [theme.breakpoints.down('sm')]: {
      width: '100%'
    }
  },
  button: {
    textTransform: 'none',
    fontWeight: 800,
    fontSize: theme.typography.subtitle1.fontSize,
    color: 'white',
    border: '2px solid white',
    [theme.breakpoints.up('lg')]: {
      height: '4rem',
      paddingLeft: '4rem',
      paddingRight: '4rem'
    },
    [theme.breakpoints.down('sm')]: {
      height: '4rem',
      width: '100%',
      paddingLeft: '4rem',
      paddingRight: '4rem'
    }
  },
  buttonArrow: {
    marginLeft: -theme.spacing.unit * 4,
    [theme.breakpoints.down('sm')]: {
      display: 'none'
    }
  },
  verticalAlignText: {
    color: 'white',
    writingMode: 'vertical-lr',
    textOrientation: ' sideways-right'
  },
  mapSection: {
    color: 'white',
    //    paddingLeft: '5rem',
    [theme.breakpoints.down('sm')]: {
      display: 'none'
    }
  },
  modalContent: {
    margin: 'auto',
    top: theme.spacing.unit * 10,
    height: 'auto'
  }
});

class Hero extends React.Component {
  constructor(props) {
    super(props);

    this.state = { choooserOpen: false };
    this.handleToggle = this.handleToggle.bind(this);
  }

  handleToggle() {
    this.setState(prevState => ({ choooserOpen: !prevState.choooserOpen }));
  }

  render() {
    const { classes } = this.props;
    const { choooserOpen } = this.state;
    return (
      <Grid container item xs={12} className={classes.root}>
        <Grid
          container
          direction="row"
          spacing={40}
          justify="space-between"
          className={classes.heroContentGrid}
        >
          <Grid
            item
            sm={12}
            md={8}
            lg={8}
            xl={6}
            className={classes.titleTextGrid}
          >
            <Typography variant="h1" className={classes.text}>
              Discover the stories behind the data.
            </Typography>

            <Typography variant="body1" className={classes.body2}>
              Dominion makes data available to help add context and authority to
              public discourse and policy-making on vital issues of land
              ownership.
            </Typography>
            <Grid item sm={12} style={{ paddingTop: '2rem' }}>
              <Button
                variant="outlined"
                onClick={this.handleToggle}
                color="white"
                className={classes.button}
              >
                Select a Country
              </Button>
              <img
                src={arrow}
                alt="Select Country"
                className={classes.buttonArrow}
              />
            </Grid>
          </Grid>
          <Grid
            sm={12}
            md={4}
            lg={4}
            xl={5}
            item
            container
            direction="row"
            justify="space-around"
            alignItems="center"
            className={classes.mapSection}
          >
            <img src={map} alt="Country Map" />
            <Typography
              variant="fontSmallDefault"
              className={classes.verticalAlignText}
            >
              South Africa &nbsp;&nbsp;
              <div
                style={{
                  display: 'inline-block',
                  borderLeft: '1px solid #fff'
                }}
              >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{' '}
              </div>
            </Typography>
          </Grid>
        </Grid>
        <Modal
          open={choooserOpen}
          onClose={this.handleToggle}
          className={classes.modalContent}
        >
          <PortalChooser close={this.handleToggle} />
        </Modal>
      </Grid>
    );
  }
}

Hero.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(Hero);
