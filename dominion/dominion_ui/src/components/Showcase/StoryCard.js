import React from 'react';
import PropTypes from 'prop-types';

import {
  Typography,
  Card,
  CardActionArea,
  CardMedia,
  CardContent
} from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

const styles = theme => ({
  root: {
    width: '100vw',
    height: '100%',
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
      width: '19.875rem'
    }
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
    fontWeight: 400,
    paddingTop: '1rem'
  },
  bodyArea: {
    paddingTop: '2rem'
  },
  bodyTitle: {
    color: '#fff',
    fontWeight: 500
  },
  bodyText: {
    color: '#fff',
    fontWeight: 500,
    marginTop: '1rem'
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
            <Typography variant="h6" className={classes.overline}>
              {date}
            </Typography>
            <div className={classes.bodyArea}>
              <Typography variant="h5" className={classes.bodyTitle}>
                {title}
              </Typography>
              <Typography variant="subtitle2" className={classes.bodyText}>
                {body}{' '}
              </Typography>
            </div>
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
