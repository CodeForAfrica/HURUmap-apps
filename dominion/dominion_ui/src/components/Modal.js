import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';

import Modal from '@material-ui/core/Modal';

import background from '../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: 0,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    top: '100px'
  },
  modal: {
    padding: theme.spacing.unit * 4,
    outline: 'none',
    height: 'auto',
    width: '100vw'
  }
});

class Search extends Component {
  constructor(props) {
    super(props);
    this.state = {
      isOpen: false
    };

    this.handleToggle = this.handleToggle.bind(this);
  }

  handleToggle() {
    const { isOpen } = this.state;
    this.setState({ isOpen: !isOpen });
  }

  render() {
    const { classes, activator, content } = this.props;
    const { isOpen } = this.state;
    return (
      <div>
        {<activator.type {...activator.props} onClick={this.handleToggle} />}
        <Modal
          disableAutoFocus
          hideBackdrop
          aria-labelledby="search-modal"
          open={isOpen}
          onClose={this.handleToggle}
          className={classes.root}
        >
          <content.type
            {...content.props}
            className={classes.modal}
            onClose={this.handleToggle}
          />
        </Modal>
      </div>
    );
  }
}

Search.propTypes = {
  classes: PropTypes.shape().isRequired,
  activator: PropTypes.element.isRequired,
  content: PropTypes.element.isRequired
};

export default withStyles(styles)(Search);
