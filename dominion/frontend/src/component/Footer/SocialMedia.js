import React from "react";

import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

import { Grid } from "@material-ui/core";
import { withStyles } from "@material-ui/core/styles";

const styles = theme => ({});

function SocialMedia() {
  return (
    <Grid direction="row" justify="center" alignItems="center">
      <Grid item>
        <a
          href="https://twitter.com/sensorsAFRICA/"
          target="_blank"
          rel="noopener noreferrer"
        >
          <FontAwesomeIcon icon={["fab", "twitter"]} size="2x" fixedWidth />
        </a>
      </Grid>
      <Grid item>
        <a
          href="https://www.facebook.com/sensorsAFRICA/"
          target="_blank"
          rel="noopener noreferrer"
        >
          <FontAwesomeIcon icon={["fab", "facebook-f"]} size="2x" fixedWidth />
        </a>
      </Grid>
    </Grid>
  );
}

export default withStyles(styles)(SocialMedia);
