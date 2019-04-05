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
      paddingRight: '1.25rem'
    }
  },
  contentRoot: {
    flexGrow: 1
  },
  cardContent: {
    alignItems: 'flex-end',
    display: 'flex',
    flexGrow: 1,
    marginTop: '-100%'
  },
  media: {
    height: '20rem',
    paddingTop: '100%',
    width: '100%',
    backgroundColor: 'rgba(0, 0, 0, 0.6)',
    backgroundBlendMode: 'color'
  },
  cardLink: {
    textDecoration: 'none'
  },
  overline: {
    color: '#fff',
    fontSize: theme.typography.fontSmallDefault.fontSize,
    fontWeight: 400
  },
  bodyTitle: {
    color: '#fff',
    fontWeight: 500,
    marginTop: '1rem'
  },
  bodyText: {
    color: '#fff',
    margin: '1rem 0'
  }
});

function StoryCard({ story, classes }) {
  const { image, date, title, brief, link } = story;

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
          <CardContent className={classes.cardContent}>
            <Grid
              container
              direction="column"
              className={classes.contentRoot}
              alignItems="flex-start"
              justifyContent="flex-end"
              style={{ height: '100%' }}
            >
              <Typography variant="h6" className={classes.overline}>
                {date}
              </Typography>
              <Typography variant="h5" className={classes.bodyTitle}>
                {title}
              </Typography>
              <Typography variant="subtitle2" className={classes.bodyText}>
                {brief}{' '}
              </Typography>
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
