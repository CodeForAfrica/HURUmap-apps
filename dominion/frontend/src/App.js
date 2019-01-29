import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

import CssBaseline from '@material-ui/core/CssBaseline';
import { MuiThemeProvider, createMuiTheme } from '@material-ui/core/styles';

import { URLS } from './component/DocumentHead/PageHeads';
import Home from './pages/Home';
import Country from './pages/Country';
import NotFound from './pages/NotFound';

const FONT_FAMILY = '"Roboto", "sans-serif"';

const THEME = createMuiTheme({
  palette: {
    primary: { main: '#ffffff', light: '#f1f1ed', dark: '#1b1b1a' },
    secondary: { main: '#000000', light: '#2c2c2a', dark: '#2b3129' },
    highlight: { main: '#e7e452' }
  },
  typography: {
    fontFamily: FONT_FAMILY,
    fontSize: 16,
    h2: { textTransform: 'uppercase', fontWeight: 500 },
    h3: { color: '#2b3129', textTransform: 'capitalize' },
    h4: { color: '#ffffff' },
    useNextVariants: true
  },
  fontSmallDefault: {
    fontSize: 14
  },
  MuiButton: {
    root: {
      border: '2px solid #ffff',
      borderRadius: 0,
      color: '#fff'
    }
  }
});

function App() {
  return (
    <MuiThemeProvider theme={THEME}>
      <CssBaseline>
        <BrowserRouter>
          <Switch>
            <Route
              exact
              path={URLS.HOME}
              render={props => <Home {...props} url={URLS.HOME} />}
            />
            <Route
              path={URLS.COUNTRY}
              render={props => <Country {...props} url={URLS.COUNTRY} />}
            />
            <Route
              render={props => <NotFound {...props} url={URLS.NOT_FOUND} />}
            />
          </Switch>
        </BrowserRouter>
      </CssBaseline>
    </MuiThemeProvider>
  );
}

export default App;
