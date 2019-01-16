import React, { Component } from 'react';

import './assets/css/App.css';
import GeoJsonMap from './component/GeoJsonMap';
import MapService from './services/MapService';

const mapService = new MapService();

class App extends Component {

  constructor() {
    super();
  }
  componentDidMount() {
    mapService.getAreaGeoJson().then(value => {
      this.setState({
        mapJsonData: value
      }, () => {
        console.log(this.state);
      })
    });
  }
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <GeoJsonMap />
        </header>
      </div>
    );
  }
}

export default App;
