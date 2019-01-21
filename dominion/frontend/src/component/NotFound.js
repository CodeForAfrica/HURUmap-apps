import React, { Component } from "react";
import PropTypes from "prop-types";
import { withRouter } from "react-router-dom";

import { Grid, Typography } from "@material-ui/core";
import { withStyles } from "@material-ui/core/styles";

import DocumentHead from "../component/DocumentHead/Index";

class NotFound extends Component {
  render() {
    const { classes, url } = this.props;

    return (
      <Grid container className={classes.root}>
        <DocumentHead url={url} />
        <Grid
          item
          xs={12}
          container
          direction="column"
          justify="center"
          alignItems="center"
        >
          <Typography variant="h1">404</Typography>
          <Typography variant="h5">
            OOPS! WE CAN&apos;T SEEM TO FIND THE PAGE YOU ARE LOOKING FOR.
          </Typography>
        </Grid>
      </Grid>
    );
  }
}

NotFound.propTypes = {
  url: PropTypes.string
};

NotFound.defaultProps = {
  url: null
};

export default withRouter(withStyles(NotFound));
