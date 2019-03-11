import React from 'react';
import PropTypes from 'prop-types';

import { AppBar, Tabs, Tab } from '@material-ui/core';
import withWidth, { isWidthUp } from '@material-ui/core/withWidth';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  root: {
    flexGrow: 1,
    width: '100%',
    backgroundColor: '#fff',
    scrollBehavior: 'smooth'
  },
  indicator: {
    height: '.25rem', // 4px / 16
    backgroundColor: '#7f9442'
  },
  tab: {
    height: '6.25rem', // 100px / 16
    fontFamily: theme.typography.subtitle1.fontFamily,
    fontSize: theme.typography.subtitle1.fontSize,
    textTransform: 'none',
    [theme.breakpoints.up('md')]: {
      minWidth: 0
    }
  },
  tabSelected: {
    fontWeight: 700
  }
});

const PROFILES = [
  {
    name: 'All',
    href: '#profile-detail'
  },
  {
    name: 'Elections',
    href: '#elections'
  },
  {
    name: 'Demographics',
    href: '#demographics'
  },
  {
    name: 'Households',
    href: '#households'
  },
  {
    name: 'Service Delivery',
    href: '#service-delivery'
  },
  {
    name: 'Economics',
    href: '#economics'
  },
  {
    name: 'Education',
    href: '#education'
  },
  {
    name: 'Children',
    href: '#children'
  },
  {
    name: 'Child-headed Households',
    href: '#child-headed-households'
  },
  {
    name: 'Other',
    href: '#other'
  }
];

function LinkTab(props) {
  return <Tab component="a" {...props} />;
}

class ProfileTabs extends React.Component {
  constructor(props) {
    super(props);

    const { profiles } = props;
    let value;
    if (profiles.length) {
      const [{ href }] = profiles;
      value = href;
    }
    this.state = { value };
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(event, value) {
    this.setState({ value });
  }

  render() {
    const { classes, profiles, width } = this.props;
    const { value } = this.state;

    const centered = isWidthUp('md', width); // centered is only for md and up
    const variant = centered ? 'standard' : 'scrollable';

    return (
      <div className={classes.root}>
        <AppBar color="inherit" position="static">
          <Tabs
            value={value}
            variant={variant}
            scrollButtons="off" // Never show scroll buttons
            centered={centered}
            classes={{ indicator: classes.indicator }}
            onChange={this.handleChange}
          >
            {profiles.map(profile => (
              <LinkTab
                key={profile.href}
                value={profile.href}
                href={profile.href}
                label={profile.name}
                className={classes.tab}
                classes={{ selected: classes.tabSelected }}
              />
            ))}
          </Tabs>
        </AppBar>
      </div>
    );
  }
}

ProfileTabs.propTypes = {
  classes: PropTypes.shape().isRequired,
  profiles: PropTypes.arrayOf(
    PropTypes.shape({
      name: PropTypes.string.isRequired,
      href: PropTypes.string.isRequired
    })
  ),
  width: PropTypes.string.isRequired
};

ProfileTabs.defaultProps = {
  profiles: PROFILES
};

export default withWidth()(withStyles(styles)(ProfileTabs));
