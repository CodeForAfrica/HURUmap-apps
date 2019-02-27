import React from 'react';
import PropTypes from 'prop-types';
import NumberFormat from 'react-number-format';

import { Grid, MenuList, MenuItem } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';
import background from '../../../assets/images/bg/background.png';

const styles = theme => ({
  root: {
    flexGrow: 1,
    height: 300,
    width: '100vw',
    color: 'white',
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  listItem: {
    lineHeight: 1.3,
    padding: theme.spacing.unit * 3
  },
  listText: {
    color: 'white',
    fontSize: 50,
    letterSpacing: 1.4,
    textDecoration: 'none'
  }
});

// //list item link
// function ListItemLink(props) {
//   const { primary, to } = props;
//   return (
//     <li>
//       <ListItem button component={Link} to={`/profiles/${to}` }>
//         {primary}
//       </ListItem>
//     </li>
//   );
// }
//
// ListItemLink.propTypes = {
//   primary: PropTypes.node.isRequired,
//   to: PropTypes.string.isRequired,
// };

const countries = [
  { geoid: 'country-KE', name: 'Kenya' },
  { geoid: 'country-NG', name: 'Nigeria' },
  { geoid: 'country-TZ', name: 'Tanzania' }
];

function PortalChooser(props) {
  const { classes } = props;

  return (
    <Grid className={classes.root}>
      <Grid item xs={5} md={5} lg={5} xl={6} />
      <Grid item xs={7} md={7} lg={7} xl={6}>
        <MenuList>
          {countries.map((country, index) => (
            <MenuItem button className={classes.listItem}>
              <a
                href={`/profiles/${country.geoid}`}
                className={classes.listText}
              >
                <NumberFormat value={index + 1} displayType="text" prefix="0" />
                &nbsp;&nbsp;&nbsp; {country.name}
              </a>
            </MenuItem>
          ))}
        </MenuList>
      </Grid>
    </Grid>
  );
}

PortalChooser.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(PortalChooser);
