import React from 'react';
import PropTypes from 'prop-types';

import CssBaseline from '@material-ui/core/CssBaseline';
import { MuiThemeProvider, createMuiTheme } from '@material-ui/core/styles';

const FONT_FAMILY_HEADING = '"Roboto Slab", "serif"';
const FONT_FAMILY_TEXT = '"Roboto", "sans-serif"';

const THEME = createMuiTheme({
  palette: {
    primary: { main: '#2b3129', light: '#f1f1ed' },
    secondary: { main: '#000000', dark: '#2c2c2a', grey: '#2b3129' },
    highlight: { main: '#e7e452' }
  },
  typography: {
    fontFamily: FONT_FAMILY_TEXT,
    fontSize: 12,
    h2: {
      color: '#293229',
      fontFamily: FONT_FAMILY_HEADING,
      textTransform: 'capitalize',
      fontWeight: 400
    }, // Hero section  heading
    h3: {
      color: '#2b3129',
      fontFamily: FONT_FAMILY_HEADING,
      textTransform: 'capitalize'
    }, // Section heading
    h4: {
      color: '#2b3129',
      fontFamily: FONT_FAMILY_HEADING,
      textTransform: 'capitalize'
    },
    h5: {
      color: '#2b3129',
      fontFamily: FONT_FAMILY_HEADING,
      textTransform: 'capitalize'
    },
    h6: {
      color: '#2b3129',
      fontFamily: FONT_FAMILY_HEADING,
      textTransform: 'capitalize'
    },
    body2: {
      color: 'rgba(34, 40, 34, 0.8)'
    },
    fontSmallDefault: {
      fontSize: 14
    },
    useNextVariants: true
  },
  overrides: {
    MuiButton: {
      root: {
        border: '2px solid #ffff',
        borderRadius: 0,
        color: '#fff'
      }
    },
    MuiCard: {
      root: {
        borderRadius: 0,
        boxShadow: 'none'
      }
    }
  }
});

function Theme({ children }) {
  return (
    <MuiThemeProvider theme={THEME}>
      <CssBaseline>{children}</CssBaseline>
    </MuiThemeProvider>
  );
}
Theme.propTypes = {
  children: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.node),
    PropTypes.node
  ]).isRequired
};

export default Theme;
