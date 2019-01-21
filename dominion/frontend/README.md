## 🚀 Quick start: Dominion React Front End

## Development

Before we get started, we need to have our back-end application running/already deployed. So on a terminal, run the back-end project [dominion](https://github.com/CodeForAfrica/HURUmap-apps/tree/feature/dominion-setup/dominion) as a [HURUmap-apps](https://github.com/CodeForAfrica/HURUmap-apps/blob/master/README.md).

Once your back-end is running either local or on a server, run the following commands to get started.

`Note: You will need to update the config dev.js file with the right url for your api/back-end project`

```
cd frontend
yarn
yarn start
```

## API documentation

This react project uses a South Afican mapit instance to get map data/geoJSON file

And uses dominion HURUmap-apps for data. Below are the api root

```
/api/1.0/data/shoq/latest
/api/1.0/table$
/api/1.0/geo/<geo_id>/patents
```

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).
