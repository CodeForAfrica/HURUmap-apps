import React from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';

const styles = {
  locationText: {
    color: 'white',
    fontSize: 13,
    fontWeight: 'bold',
    display: 'inline-block',
    '&:hover': {
      color: '#e7e452'
    }
  }
};

class GetLocation extends React.Component {
  constructor(props) {
    super(props);

    this.state = { buttonText: 'Use your current Location' };
    this.findLocation = this.findLocation.bind(this);
  }

  findLocation() {
    this.setState(() => ({ buttonText: 'Locating   .....' }));

    const { countries } = this.props;

    const locateMe = json => {
      // If not really there
      if (json.results.length === 0) {
        this.setState(() => ({ buttonText: 'Could not locate you   .....' }));
      } else {
        // Find country
        const addresses = json.results[0].address_components;
        const addressContains = country =>
          addresses.find(address => address.long_name === country.name) !==
          undefined;
        const foundEntry = Object.entries(countries).find(([, country]) =>
          addressContains(country)
        );
        if (foundEntry) {
          const [url] = foundEntry;
          window.location = url;
        } else {
          this.setState(() => ({
            buttonText: 'Oops.. Dominion has no instance for your country'
          }));
        }
      }
    };

    navigator.geolocation.getCurrentPosition(
      position => {
        const url = `https://maps.googleapis.com/maps/api/geocode/json?sensor=false&language=en&latlng=${
          position.coords.latitude
        },${position.coords.longitude}&key=${window.GOOGLE_GEOCODE_API_KEY}`;
        fetch(url)
          .then(data => data.json())
          .then(json => locateMe(json));
      },
      failure => {
        this.setState(() => ({ buttonText: failure.message }));
      }
    );
  }

  render() {
    const { classes } = this.props;
    const { buttonText } = this.state;

    return (
      <div
        role="button"
        tabIndex="0"
        onClick={this.findLocation}
        onKeyPress={this.findLocation}
        className={classes.locationText}
      >
        {buttonText}
      </div>
    );
  }
}

GetLocation.propTypes = {
  classes: PropTypes.shape().isRequired,
  countries: PropTypes.isRequired
};

export default withStyles(styles)(GetLocation);
