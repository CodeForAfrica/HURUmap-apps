import React from 'react'
import { Map as LeafletMap, GeoJSON } from 'react-leaflet';

function GeoJsonMap({ mapGeoJson }) {
  console.log(mapGeoJson.type);
  if (mapGeoJson.type) {
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
          data={mapGeoJson}
          style={() => ({
            color: '#777',
            weight: 2,
            fillColor: "#1a1d62",
            fillOpacity: 1,
          })}
        />
      </LeafletMap>
    );
  } else {
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
    </LeafletMap>
    )
  }

}

export default GeoJsonMap
