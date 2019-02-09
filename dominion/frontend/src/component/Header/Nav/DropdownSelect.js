import React from 'react';
import PropTypes from 'prop-types';

import Select from 'react-select';
import KeyboardArrowDown from '@material-ui/icons/KeyboardArrowDown';

import {
  Grid,
  MenuItem,
  Paper,
  TextField,
  Typography
} from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  root: {
    flexGrow: 1
  },
  input: {
    display: 'flex',
    padding: 0,
    color: 'white'
  },
  valueContainer: {
    display: 'flex',
    flexWrap: 'wrap',
    flexGrow: 1,
    alignItems: 'center',
    backgroundColor: 'none',
    width: '250px',
    border: '0px solid transparent'
  },
  chip: {
    margin: `${theme.spacing.unit / 2}px ${theme.spacing.unit / 4}px`
  },
  noOptionsMessage: {
    padding: `${theme.spacing.unit}px ${theme.spacing.unit * 2}px`,
    color: 'white'
  },
  singleValue: {
    fontSize: 30,
    color: 'white'
  },
  placeholder: {
    position: 'absolute',
    left: 2,
    fontSize: 16,
    color: 'white',
    paddingLeft: '1rem'
  },
  paper: {
    position: 'absolute',
    zIndex: 2,
    marginTop: theme.spacing.unit,
    display: 'flex',
    justify: 'center',
    border: '0px solid transparent !important',
    background: 'transparent',
    width: '250px',
    [theme.breakpoints.up('md')]: {
      display: 'flex',
      flexDirection: 'column',
      height: 'auto'
    }
  },
  keyboardarrowdown: { paddingLeft: '10rem', cursor: 'pointer' }
});

function NoOptionsMessage({ children, innerProps, selectProps }) {
  return (
    <Typography
      color="textSecondary"
      className={selectProps.classes.noOptionsMessage}
      {...innerProps}
    >
      {children}
    </Typography>
  );
}

NoOptionsMessage.propTypes = {
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  innerProps: PropTypes.shape().isRequired,
  selectProps: PropTypes.shape().isRequired
};

function InputComponent({ inputRef, ...props }) {
  return <div ref={inputRef} {...props} />;
}

InputComponent.propTypes = {
  inputRef: PropTypes.shape().isRequired,
  props: PropTypes.shape().isRequired
};

function Control({ children, innerProps, innerRef, selectProps }) {
  return (
    <TextField
      InputProps={{
        inputComponent: InputComponent,
        inputProps: {
          className: selectProps.classes.input,
          inputRef: innerRef,
          children,
          ...innerProps
        }
      }}
      {...selectProps.textFieldProps}
    />
  );
}

Control.propTypes = {
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  innerProps: PropTypes.shape().isRequired,
  innerRef: PropTypes.shape().isRequired,
  selectProps: PropTypes.shape().isRequired
};

function Option({ children, innerProps, innerRef, isFocused }) {
  return (
    <MenuItem
      buttonRef={innerRef}
      selected={isFocused}
      component="div"
      style={{
        height: '3rem',
        color: '#fff',
        fontWeight: 500,
        fontSize: '2rem',
        border: 0,
        width: '300px',
        padding: '1px'
      }}
      {...innerProps}
    >
      {children}
    </MenuItem>
  );
}

Option.propTypes = {
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  innerProps: PropTypes.shape().isRequired,
  innerRef: PropTypes.shape().isRequired,
  selectProps: PropTypes.shape().isRequired,
  isFocused: PropTypes.bool.isRequired
};

function Placeholder({ children, innerProps, selectProps }) {
  return (
    <Typography
      color="white"
      className={selectProps.classes.placeholder}
      {...innerProps}
    >
      {children}
    </Typography>
  );
}

Placeholder.propTypes = {
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  innerProps: PropTypes.shape().isRequired,
  selectProps: PropTypes.shape().isRequired
};

function SingleValue({ children, innerProps, selectProps }) {
  return (
    <Typography className={selectProps.classes.singleValue} {...innerProps}>
      {children}
    </Typography>
  );
}

SingleValue.propTypes = {
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  innerProps: PropTypes.shape().isRequired,
  selectProps: PropTypes.shape().isRequired
};

function ValueContainer({ children, selectProps }) {
  return (
    <div className={selectProps.classes.valueContainer}>
      {children}
      <KeyboardArrowDown className={selectProps.classes.keyboardarrowdown} />
    </div>
  );
}

ValueContainer.propTypes = {
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  selectProps: PropTypes.shape().isRequired
};

function Menu({ children, innerProps, selectProps }) {
  return (
    <Paper className={selectProps.classes.paper} {...innerProps}>
      {children}
    </Paper>
  );
}

Menu.propTypes = {
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired,
  innerProps: PropTypes.shape().isRequired,
  selectProps: PropTypes.shape().isRequired
};

const components = {
  Control,
  Menu,
  NoOptionsMessage,
  Option,
  Placeholder,
  SingleValue,
  ValueContainer,
  DropdownIndicator: null
};

const DEFAULT_OPTIONS = [
  { value: 'Kenya', label: 'Kenya' },
  { value: 'Nigeria', label: 'Nigeria' },
  { value: 'Tanzania', label: 'Tanzania' }
];

class DropdownSelect extends React.Component {
  constructor(props) {
    super(props);

    this.state = { single: null };
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(city) {
    this.setState({ single: city });
    const { handleSearch } = this.props;
    if (handleSearch) {
      handleSearch(city);
    }
  }

  render() {
    const { classes, options, placeholder } = this.props;
    const { single } = this.state;

    return (
      <Grid className={classes.root}>
        <Grid>
          <Select
            classes={classes}
            options={options}
            components={components}
            value={single}
            onChange={this.handleChange}
            placeholder={placeholder}
            isSearchable="false"
          />
        </Grid>
      </Grid>
    );
  }
}

DropdownSelect.propTypes = {
  classes: PropTypes.isRequired,
  handleSearch: PropTypes.func,
  options: PropTypes.instanceOf(Array),
  placeholder: PropTypes.string
};

DropdownSelect.defaultProps = {
  handleSearch: null,
  options: DEFAULT_OPTIONS,
  placeholder: 'Countries'
};

export default withStyles(styles)(DropdownSelect);
