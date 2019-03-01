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

    this.state = { buttonText: 'Use you Location' };
    this.findLocation = this.findLocation.bind(this);
    this.locateMe = this.locateMe.bind(this);
  }

  findLocation() {
    const { history } = this.props;
    this.setState(() => ({ buttonText: 'Locating   .....' }));
    navigator.geolocation.getCurrentPosition(
      position => {
        const url = `https://maps.googleapis.com/maps/api/geocode/json?sensor=false&language=en&latlng=${
          position.coords.latitude
        },${position.coords.longitude}&key=${window.GOOGLE_GEOCODE_API_KEY}`;
        fetch(url).then(response => {
          const found = this.locateMe(response);
          if (found) {
            history.push(found.url, '_blank');
          } else {
            this.setState(() => ({
              buttonText: 'Oops.. Could not locate you.  .....'
            }));
          }
        });
      },
      failure => {
        this.setState(() => ({ buttonText: failure.message }));
      }
    );
  }

  locateMe(response) {
    let found = false;
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
    // If not really there
    if (typeof response.results[0] === 'undefined') {
      this.setState(() => ({ buttonText: 'Could not locate you   .....' }));
      return false;
    }
    // Find country
    const addresses = response.results[0].address_components;
    addresses.forEach((index, address) => {
      countries.forEach(country => {
        if (address.long_name === country.name) {
          found = country;
        }
      });
    });
    return found;
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
  history: PropTypes.shape().isRequired
};

export default withStyles(styles)(GetLocation);
