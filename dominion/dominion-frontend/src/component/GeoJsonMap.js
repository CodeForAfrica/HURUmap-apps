import React from 'react'
import { Map as LeafletMap, GeoJSON } from 'react-leaflet';
import worldGeoJSON from 'geojson-world-map';

function GeoJsonMap({ mapGeoJson }) {
    return (
      <LeafletMap
        center={[50, 10]}
        zoom={6}
        maxZoom={10}
        attributionControl={true}
        zoomControl={true}
        doubleClickZoom={true}
        scrollWheelZoom={true}
        dragging={true}
        animate={true}
        easeLinearity={0.35}
      >
        <GeoJSON
          data={worldGeoJSON}
          style={() => ({
            color: '#777',
            weight: 2,
            fillColor: "#1a1d62",
            fillOpacity: 1,
          })}
        />
      </LeafletMap>
    );
}

export default GeoJsonMap
