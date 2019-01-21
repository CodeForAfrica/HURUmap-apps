import React from "react";
import { BrowserRouter, Route, Switch } from "react-router-dom";

//import { createMuiTheme } from "@material-ui/core/styles";
import CssBaseline from "@material-ui/core/CssBaseline";

import { URLS } from "../src/component/DocumentHead/PageHeads";
import Home from "./pages/home";
import NotFound from "../src/component/NotFound";

function App() {
  return (
    <CssBaseline>
      <BrowserRouter>
        <Switch>
          <Route exact path={URLS.HOME} component={Home} />
          <Route
            render={props => <NotFound {...props} url={URLS.NOT_FOUND} />}
          />
        </Switch>
      </BrowserRouter>
    </CssBaseline>
  );
}

export default App;
