import React from "react";
import { Grid, Typography } from "@material-ui/core";
import { withStyles } from "@material-ui/core/styles";

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: "grey",
    padding: "3rem",
    height: "350px"
  }
});

function Footer({ classes }) {
  return (
    <Grid
      container
      spacing={24}
      className={classes.root}
      direction="row"
      alignItems="center"
    >
      <Grid item xs={8}>
        <Typography variant="body1">
          Lorem ipsum dolor sit amet, mel tollit partem ullamcorper ei, ut quo
          delectus efficiantur, putent debitis inciderint ei his. Omnis assum
          eirmod his no. Malis adipisci platonem ad eos, cu eam volutpat
          constituto dissentiet, mel ad vidit mundi. Id eros recteque disputando
          his, mei an eleifend incorrupte. Sit albucius vivendum cu, in eos elit
          possim expetenda. Vel no libris corpora ponderum.
        </Typography>
      </Grid>
      <Grid
        item
        xs={4}
        container
        spacing={40}
        direction="row"
        justify="flex-end"
        alignItems="center"
      >
        <Grid>this is an example</Grid>
        <Grid>this is an example</Grid>
      </Grid>
    </Grid>
  );
}

export default withStyles(styles)(Footer);
