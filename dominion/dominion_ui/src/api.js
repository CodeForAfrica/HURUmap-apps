import axios from 'axios';

export default function createAPI() {
  const mapitURL = window.MAPIT.url;

  return {
    getGeography: async countryId => {
      const response = await axios.get(
        `${mapitURL}/area/${countryId}/children`
      );
      return Object.values(response.data);
    }
  };
}
