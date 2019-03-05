import React from 'react';

import { PropTypes } from 'prop-types';

export const AppContext = React.createContext({});
export const AppContextConsumer = AppContext.Consumer;

class AppContextProvider extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      // eslint-disable-next-line react/no-unused-state
      selectedCountry: {
        name: 'Country Name'
      }
    };
  }

  componentDidMount() {
    // eslint-disable-next-line react/no-unused-state
    if (window.COUNTRY) {
      this.setState({ selectedCountry: window.COUNTRY });
    }
  }

  render() {
    const { selectedCountry } = this.state;
    const store = {
      selectedCountry
    };

    const { children } = this.props;

    return <AppContext.Provider value={store}>{children}</AppContext.Provider>;
  }
}

AppContextProvider.propTypes = {
  children: PropTypes.isRequired
};

export default AppContextProvider;
