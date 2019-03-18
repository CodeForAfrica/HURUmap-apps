import axios from 'axios';

export default function createAPI() {
  const mapitURL = window.MAPIT.url;
  const mapitCode = window.MAPIT.code_type;

  return {
    getGeography: async (countryCode, searchTerm) => {
      const response = await axios.get(
        `${mapitURL}/areas/${searchTerm}?country=${countryCode}`
      );
      return Object.values(response.data);
    },
    getGeoLevel: async geoId => {
      const response = await axios.get(
        `${mapitURL}/code/${mapitCode}/${geoId}`
      );
      return response.data.type.toLowerCase();
    }
  };
}
