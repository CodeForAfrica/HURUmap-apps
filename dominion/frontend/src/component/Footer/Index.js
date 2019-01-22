import React from "react";
import { Grid, Typography } from "@material-ui/core";
import { withStyles } from "@material-ui/core/styles";
import SocialMedia from "./SocialMedia";
import background from "../../assets/images/bg/background.png";

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: "3rem",
    backgroundImage: `url(${background})`,
    backgroundRepeat: "no-repeat",
    backgroundSize: "cover",
    [theme.breakpoints.up("md")]: {
      height: "50vh"
    }
  },
  typographyTitle: { color: "#f1f1ed", fontWeight: "bold", opacity: "0.6" },
  typographyBody: { color: "#f1f1ed", opacity: "0.6", paddingTop: "3rem" },
  listTypography: { color: "#f1f1ed", opacity: "0.6" },
  links: { color: "#f1f1ed" }
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
      <Grid item xs={7}>
        <Typography variant="body2" className={classes.typographyTitle}>
          HURUmap's underlying data is quality-checked from reputable official
          sources including the government census,{" "}
          <a
            href="https://www.pepfar.gov/"
            target="_blank"
            rel="noopener noreferrer"
            className={classes.links}
          >
            PEPFAR{" "}
          </a>{" "}
          and{" "}
          <a
            href="http://www.uwezo.net/"
            target="_blank"
            rel="noopener noreferrer"
            className={classes.links}
          >
            UWEZO
          </a>
        </Typography>
        <Typography variant="body2" className={classes.typographyBody}>
          This project is built on software originally created by the Knight Lab
          in the USA for the{" "}
          <a href="https://censusreporter.org/" className={classes.links}>
            censusReporter.org
          </a>{" "}
          project which has been repurposed by{" "}
          <a href="https://openup.org.za/" className={classes.links}>
            OpenUp
          </a>{" "}
          and Media Monitoring Africa for Wazimap in South Africa for Wazimap in
          SouthAfrica and by Code for Africa FOR hurumaap in Kenya ,Tanzania,
          Uganda and Zambia
        </Typography>
      </Grid>
      <Grid
        item
        xs={5}
        container
        direction="row"
        justify="flex-end"
        alignItems="flex-start"
      >
        <Grid style={{ padding: "1rem" }}>
          <Typography variant="body2" className={classes.listTypography}>
            Other openAfrica Projects
            <ul>
              <li>Tax Clock</li>
              <li>sourceAFRICA</li>
            </ul>
          </Typography>
          <Typography variant="body2" className={classes.listTypography}>
            Join Our Community
            <ul>
              <li>Hacks/Hackers Africa</li>
            </ul>
          </Typography>
        </Grid>
        <Grid style={{ padding: "1rem" }}>
          <Typography variant="body2" className={classes.listTypography}>
            A project by Code for Africa
          </Typography>
          <Grid style={{ paddingTop: "7rem" }}>
            <SocialMedia />
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  );
}

export default withStyles(styles)(Footer);
