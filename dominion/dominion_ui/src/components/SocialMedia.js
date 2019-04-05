import React from 'react';
import PropTypes from 'prop-types';

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = () => ({
  fa: {
    transition: 'all .5s ease-in-out',
    color: '#fff',
    fontSize: '0.9375rem', // icons inherit font size of their parent
    ' &:hover': {
      color: '#fff'
    }
  },
  links: { color: '#fff' }
});

function SocialMedia({ classes }) {
  return (
    <Grid
      container
      spacing={16}
      direction="row"
      justify="flex-start"
      alignItems="center"
    >
      <Grid item>
        <a
          href="https://www.facebook.com/hashtag/onsgrond"
          target="_blank"
          rel="noopener noreferrer"
        >
          <FontAwesomeIcon
            className={classes.fa}
            icon={['fab', 'facebook-f']}
            size="sm"
          />
        </a>
      </Grid>
      <Grid item>
        <a
          href="https://www.instagram.com/explore/tags/onsgrond/"
          target="_blank"
          rel="noopener noreferrer"
        >
          <FontAwesomeIcon
            className={classes.fa}
            icon={['fab', 'instagram']}
            size="sm"
          />
        </a>
      </Grid>
      <Grid item>
        <a
          href="https://twitter.com/hashtag/OnsGrond"
          target="_blank"
          rel="noopener noreferrer"
        >
          <FontAwesomeIcon
            className={classes.fa}
            icon={['fab', 'github']}
            size="sm"
          />
        </a>
      </Grid>
    </Grid>
  );
}

SocialMedia.propTypes = {
  classes: PropTypes.shape().isRequired
};
export default withStyles(styles)(SocialMedia);
