import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

import CssBaseline from '@material-ui/core/CssBaseline';
import { MuiThemeProvider, createMuiTheme } from '@material-ui/core/styles';

import { URLS } from './component/DocumentHead/PageHeads';
import Home from './pages/Home';
import Country from './pages/Country';
import NotFound from './pages/NotFound';

const THEME = createMuiTheme({
  typography: {
    useNextVariants: true
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
