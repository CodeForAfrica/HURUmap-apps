import axios from 'axios';
const config = require('../config');

export default class MapService {
    constructor() {}

    getAreaGeoJson(){
        var mapit_level = config.level_codes['province'];
        var mapit_generation = config.generation['2016'];
        var simplify = config.level_simplicity[mapit_level];

        var url = `${config.MAPIT_URI}/areas/${mapit_level}.geojson`;
        url = url +`?generation=${mapit_generation}&simplify_tolerance=${simplify}`
        
        return axios.get(url).then(response => response.data);
     }
}
