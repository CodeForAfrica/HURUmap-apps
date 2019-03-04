import React from 'react';
import PropTypes from 'prop-types';

import {
  Typography,
  Card,
  CardActionArea,
  CardMedia,
  CardContent,
  Grid
} from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  root: {
    width: '100vw',
    height: '20rem',
    backgroundColor: '#fafafa',
    border: '1px solid #eeeeee',
    opacity: 0.9,
    '&:hover': {
      opacity: 1,
      backgroundColor: '#fff'
    },
    [theme.breakpoints.up('md')]: {
      width: '14.90625rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '20rem'
    }
  },
  contentRoot: {
    flexGrow: 1
  },
  media: {
    height: 0,
    paddingTop: '100%',
    width: '100%'
  },
  cardLink: {
    textDecoration: 'none'
  },
  overline: {
    color: '#fff',
    fontSize: theme.typography.fontSmallDefault.fontSize,
    fontWeight: 400
    // paddingTop: '1rem'
  },
  bodyTitle: {
    color: '#fff',
    fontWeight: 500,
    marginTop: '1rem'
  },
  bodyText: {
    color: '#fff',
    fontWeight: 500,
    margin: '1rem 0'
  }
});

function StoryCard({ story, classes }) {
  const { image, date, title, body, link } = story;

  return (
    <Card className={classes.root}>
      <a
        href={link}
        target="_blank"
        rel="noopener noreferrer"
        className={classes.cardLink}
      >
        <CardActionArea
          style={{ display: 'flex', flexFlow: 'column', height: '100%' }}
        >
          <CardMedia className={classes.media} image={image} title=" Story" />
          <CardContent style={{ flexGrow: 1, marginTop: '-100%' }}>
            <Grid
              container
              direction="column"
              className={classes.contentRoot}
              justify="flex-end"
              alignItems="flex-start"
              style={{ height: '100%' }}
            >
              <Grid item>
                <Typography variant="h6" className={classes.overline}>
                  {date}
                </Typography>
              </Grid>
              <Grid item>
                <Typography variant="h5" className={classes.bodyTitle}>
                  {title}
                </Typography>
              </Grid>
              <Grid item>
                <Typography variant="subtitle2" className={classes.bodyText}>
                  {body}{' '}
                </Typography>
              </Grid>
            </Grid>
          </CardContent>
        </CardActionArea>
      </a>
    </Card>
  );
}

StoryCard.propTypes = {
  classes: PropTypes.shape().isRequired,
  story: PropTypes.shape().isRequired
};

export default withStyles(styles)(StoryCard);
