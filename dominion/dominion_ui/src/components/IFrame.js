import React from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';

const styles = () => ({
  root: {
    height: 0,

    // aspect-ratio box
    paddingBottom: '56.2%',
    position: 'relative'
  },
  iframe: {
    width: '100%',
    height: '100%',
    position: 'absolute'
  }
});

function IFrame({ classes, title, src, frameBorder, allow }) {
  return (
    <div className={classes.root}>
      <iframe
        title={title}
        src={src}
        frameBorder={frameBorder}
        allow={allow}
        allowFullScreen
        className={classes.iframe}
      />
    </div>
  );
}

IFrame.propTypes = {
  classes: PropTypes.shape().isRequired,
  title: PropTypes.string.isRequired,
  src: PropTypes.string.isRequired,
  frameBorder: PropTypes.string,
  allow: PropTypes.string
};

IFrame.defaultProps = {
  frameBorder: '0',
  allow: ''
};

export default withStyles(styles)(IFrame);
