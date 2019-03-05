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
const countries = [
  {
    name: 'Kenya',
    url: '/profiles/country-KE'
  },
  {
    name: 'South Africa',
    url: '/profiles/country-ZA'
  },
  {
    name: 'Tanzania',
    url: '/profiles/country-TZ'
  },
  {
    name: 'Nigeria',
    url: '/profiles/country-NG'
  }
];

class GetLocation extends React.Component {
  constructor(props) {
    super(props);

    this.state = { buttonText: 'Use you Location' };
    this.findLocation = this.findLocation.bind(this);
  }

  findLocation() {
    this.setState(() => ({ buttonText: 'Locating   .....' }));

    const locateMe = json => {
      // If not really there
      if (json.results.length === 0) {
        this.setState(() => ({ buttonText: 'Could not locate you   .....' }));
      } else {
        // Find country
        const addresses = json.results[0].address_components;
        const countryfound = countries.find(countryObj => {
          const addressObj = addresses.filter(
            address => address.long_name === countryObj.name
          );
          console.log(addressObj);
          return addressObj.length > 0;
        });
        if (countryfound) {
          window.location = countryfound.url;
        } else {
          this.setState(() => ({
            buttonText: 'Oops.. Could not locate you.  .....'
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
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(GetLocation);
