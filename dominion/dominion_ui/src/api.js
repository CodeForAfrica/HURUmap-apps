import axios from 'axios';

export default function createAPI() {
  const mapitURL = window.MAPIT.url;

  return {
    getGeography: async (countryCode, searchTerm) => {
      const response = await axios.get(
        `${mapitURL}/areas/${searchTerm}?country=${countryCode}`
      );
      return Object.values(response.data);
    }
  };
}
