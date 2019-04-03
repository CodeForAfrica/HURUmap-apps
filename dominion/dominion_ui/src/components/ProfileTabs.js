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
    scrollBehavior: 'smooth',
    paddingLeft: '1.875rem',
    paddingRight: '1.875rem',
    [theme.breakpoints.up('md')]: {
      paddingLeft: '3.125rem',
      paddingRight: '3.125rem'
    },
    [theme.breakpoints.up('lg')]: {
      paddingLeft: '9.375rem',
      paddingRight: '9.375rem'
    }
  },
  appbar: {
    boxShadow: 'none'
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
  },
  labelContainer: {
    paddingLeft: theme.spacing.unit * 2,
    paddingRight: theme.spacing.unit * 2
  }
});

function LinkTab(props) {
  return <Tab component="a" {...props} />;
}

class ProfileTabs extends React.Component {
  constructor(props) {
    super(props);

    const {
      profile: { tabs }
    } = props;
    let value;
    if (tabs.length) {
      const [{ href }] = tabs;
      value = href;
    }
    this.state = { value };
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(event, value) {
    const {
      profile: { switchToTab }
    } = this.props;
    this.setState({ value });
    if (switchToTab) {
      switchToTab(value);
    }
  }

  render() {
    const {
      classes,
      profile: { tabs },
      width
    } = this.props;
    const { value } = this.state;

    const centered = isWidthUp('md', width); // centered is only for md and up
    const variant = centered ? 'standard' : 'scrollable';

    return (
      <div className={classes.root}>
        <AppBar color="inherit" position="static" className={classes.appbar}>
          <Tabs
            value={value}
            variant={variant}
            scrollButtons="off" // Never show scroll buttons
            classes={{ indicator: classes.indicator }}
            onChange={this.handleChange}
          >
            {tabs.map(tab => (
              <LinkTab
                key={tab.href}
                value={tab.href}
                href="#dominionProfileTabs" // Always show the tabs on click
                label={tab.name}
                className={classes.tab}
                classes={{
                  selected: classes.tabSelected,
                  labelContainer: classes.labelContainer
                }}
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
  profile: PropTypes.shape({
    tabs: PropTypes.arrayOf(
      PropTypes.shape({
        name: PropTypes.string.isRequired,
        href: PropTypes.string.isRequired
      })
    ).isRequired
  }).isRequired,
  width: PropTypes.string.isRequired
};

export default withWidth()(withStyles(styles)(ProfileTabs));
