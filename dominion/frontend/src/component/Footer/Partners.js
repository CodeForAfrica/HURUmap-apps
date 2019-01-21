import React from "react";
import { Grid } from "@material-ui/core";
import { withStyles } from "@material-ui/core/styles";
//Assets

import bmf from "../../assets/images/logos/bmgf.png";
import codeforafrica from "../../assets/images/logos/codeforafrica.png";
import datazetu from "../../assets/images/logos/datazetu.png";
import icfj from "../../assets/images/logos/icfj.png";
import twaweza from "../../assets/images/logos/twaweza.png";

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundColor: "#282826",
    padding: "3rem"
  },
  img: {
    maxWidth: "100%",
    height: "auto"
  }
});

function Partners({ classes }) {
  return (
    <Grid>
      <Grid
        container
        item
        xs={12}
        spacing={24}
        direction="row"
        justify="center"
        alignItems="center"
        className={classes.root}
      >
        <Grid item xs={2} style={{ padding: "2rem" }}>
          <img
            src={codeforafrica}
            alt="Code for Africa"
            className={classes.img}
          />
        </Grid>
        <Grid item xs={2}>
          <img src={datazetu} alt="Data Zetu" className={classes.img} />
        </Grid>
        <Grid item xs={2}>
          <img src={twaweza} alt="Twaweza" className={classes.img} />
        </Grid>
        <Grid item xs={2}>
          <img src={bmf} alt="Bill and Melinda Gates" className={classes.img} />
        </Grid>
        <Grid item xs={2}>
          <img src={icfj} alt="Icfj" className={classes.img} />
        </Grid>
      </Grid>
    </Grid>
  );
}

export default withStyles(styles)(Partners);
