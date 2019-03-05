import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Modal } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import Hero, {
  HeroTitle,
  HeroDescription,
  HeroTitleGrid,
  HeroButton
} from './Hero';

import herobg from '../../assets/images/bg/hero_bg.png';
import map from '../../assets/images/bg/hero_map.png';
import smallscreenbackground from '../../assets/images/bg/smallscreen_background.png';

import PortalChooser from '../Modal/PortalChooser';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  heroContentGrid: {
    flexGrow: 1,
    backgroundImage: `url(${herobg})`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: 'center',
    backgroundSize: 'auto',
    width: '100%',
    height: '100%',
    [theme.breakpoints.down('sm')]: {
      backgroundImage: `url(${smallscreenbackground})`,
      backgroundPosition: 'right top'
    }
  },
  verticalAlignText: {
    color: 'white',
    writingMode: 'vertical-lr',
    textOrientation: ' sideways-right',
    marginLeft: '10px'
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

class HomeHero extends React.Component {
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
      <Hero>
        <Grid
          container
          direction="row"
          justify="space-between"
          alignItems="center"
          className={classes.heroContentGrid}
        >
          <HeroTitleGrid>
            <HeroTitle>Discover the stories behind the data.</HeroTitle>

            <HeroDescription>
              Dominion makes data available to help add context and authority to
              public discourse and policy-making on vital issues of land
              ownership.
            </HeroDescription>
            <HeroButton onClick={this.handleToggle}>
              Select a Country
            </HeroButton>
          </HeroTitleGrid>
          <Grid
            sm={12}
            md={4}
            lg={4}
            xl={5}
            item
            container
            direction="row"
            justify="flex-end"
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
          <Modal
            disableAutoFocus
            hideBackdrop
            open={choooserOpen}
            onClose={this.handleToggle}
            className={classes.modalContent}
            aria-labelledby="portal-chooser"
          >
            <PortalChooser close={this.handleToggle} />
          </Modal>
        </Grid>
      </Hero>
    );
  }
}

HomeHero.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(HomeHero);
