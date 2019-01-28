import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

// import { createMuiTheme } from "@material-ui/core/styles";
import CssBaseline from '@material-ui/core/CssBaseline';

import { URLS } from './component/DocumentHead/PageHeads';
import Home from './pages/Home';
import Country from './pages/Country';
import NotFound from './pages/NotFound';

function App() {
  return (
    <CssBaseline>
      <BrowserRouter>
        <Switch>
          <Route exact path={URLS.HOME} component={Home} />
          <Route path={URLS.COUNTRY} component={Country} />
          <Route path={URLS.NOT_FOUND} component={NotFound} />
        </Switch>
      </BrowserRouter>
    </CssBaseline>
  );
}

export default App;
