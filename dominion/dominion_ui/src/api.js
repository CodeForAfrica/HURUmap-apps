import axios from 'axios';

const GOOGLE_GEOCODE_URL =
  'https://maps.googleapis.com/maps/api/geocode/json?sensor=false&language=en';

export default function createAPI() {
  const { url: mapitUrl, code_type: codeType } = window.MAPIT;
  const key = window.GOOGLE_GEOCODE_URL_API_KEY;

  return {
    mapit: { url: mapitUrl, codeType },
    geocode: { url: GOOGLE_GEOCODE_URL, key },
    getGeography: async (countryCode, searchTerm) => {
      const response = await axios.get(
        `${mapitUrl}/areas/${searchTerm}?country=${countryCode}`
      );
      return Object.values(response.data);
    },
    getGeoLevel: async geoId => {
      const response = await axios.get(`${mapitUrl}/code/${codeType}/${geoId}`);
      return response.data.type.toLowerCase();
    },
    getLocation: async ({ coords: { latitude, longitude } }) =>
      axios.get(
        `${GOOGLE_GEOCODE_URL}&latlng=${latitude},${longitude}&key=${key}`
      )
  };
}
