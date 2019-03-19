import axios from 'axios';

export default function createAPI() {
  const { url, code_type: codeType } = window.MAPIT;

  return {
    url,
    codeType,
    getGeography: async (countryCode, searchTerm) => {
      const response = await axios.get(
        `${url}/areas/${searchTerm}?country=${countryCode}`
      );
      return Object.values(response.data);
    },
    getGeoLevel: async geoId => {
      const response = await axios.get(`${url}/code/${codeType}/${geoId}`);
      return response.data.type.toLowerCase();
    }
  };
}
