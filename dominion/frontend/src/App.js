import React, { Component } from "react";
import { BrowserRouter, Route, Switch } from "react-router-dom";

//import { createMuiTheme } from "@material-ui/core/styles";
import CssBaseline from "@material-ui/core/CssBaseline";

import Home from "./pages/home";
//import { Typography } from "@material-ui/core";

class App extends Component {
  render() {
    return (
      <CssBaseline>
        <BrowserRouter>
          <Switch>
            <Route path="/" component={Home} />
          </Switch>
        </BrowserRouter>
      </CssBaseline>
    );
  }
}

export default App;
