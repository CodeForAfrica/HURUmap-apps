import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

//import { createMuiTheme } from "@material-ui/core/styles";
import CssBaseline from '@material-ui/core/CssBaseline';

import { URLS } from '../src/component/DocumentHead/PageHeads';
import Home from './pages/home';
import Country from './pages/country';
import NotFound from './pages/notFound';

function App() {
  return (
    <CssBaseline>
      <BrowserRouter>
        <Switch>
          <Route exact path={URLS.HOME} component={Home} />
          <Route path={URLS.COUNTRY} component={Country} />
          <Route path={URLS.NOT_FOUND} component={NotFound} />
          />
        </Switch>
      </BrowserRouter>
    </CssBaseline>
  );
}

export default App;
