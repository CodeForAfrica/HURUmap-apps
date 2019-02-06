import React from 'react';
import PropTypes from 'prop-types';

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  fa: {
    transition: 'all .5s ease-in-out',
    color: '#fff',
    ' &:hover': {
      transform: 'scale(1.3)',
      color: theme.palette.primary.main
    }
  },
  links: { color: theme.palette.primary.main }
});

function SocialMedia({ classes }) {
  return (
    <Grid
      container
      spacing={8}
      direction="row"
      justify="flex-start"
      alignItems="center"
    >
      <Grid item>
        <a
          href="https://www.facebook.com/sensorsAFRICA/"
          target="_blank"
          rel="noopener noreferrer"
        >
          <FontAwesomeIcon
            className={classes.fa}
            icon={['fab', 'facebook-f']}
            size="fa-lg"
            fixedWidth
          />
        </a>
      </Grid>
      <Grid item>
        <a
          href="https://www.facebook.com/sensorsAFRICA/"
          target="_blank"
          rel="noopener noreferrer"
        >
          <FontAwesomeIcon
            className={classes.fa}
            icon={['fab', 'instagram']}
            size="fa-lg"
            fixedWidth
          />
        </a>
      </Grid>
      <Grid item>
        <a
          href="https://twitter.com/sensorsAFRICA/"
          target="_blank"
          rel="noopener noreferrer"
        >
          <FontAwesomeIcon
            className={classes.fa}
            icon={['fab', 'github']}
            size="fa-lg"
            fixedWidth
          />
        </a>
      </Grid>
    </Grid>
  );
}

SocialMedia.propTypes = {
  classes: PropTypes.isRequired
};
export default withStyles(styles)(SocialMedia);
