import React from 'react';
import PropTypes from 'prop-types';
import withWidth, { isWidthDown } from '@material-ui/core/withWidth';

import { Grid, GridList, GridListTile } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import StoryCard from './StoryCard';

const styles = {
  root: {
    flexGrow: 1,
    height: '23.125rem',
    display: 'flex',
    flexWrap: 'wrap',
    justifyContent: 'space-around',
    overflow: 'hidden'
  },
  gridList: {
    flexWrap: 'nowrap',

    // TODO(nyokabi): Material-ui documentation for Grid list componenet
    //                Promote the list into his own layer on Chrome. This cost
    //                memory but helps keeping high FPS.
    transform: 'translateZ(0)',
    height: '100%',
    margin: '0 !important'
  },
  gridListTile: {
    display: 'flex',
    alignItems: 'strech',
    height: '100%'
  },
  gridListTileRoot: {
    height: '100% !important'
  }
};

function StoryList({ classes, storyData, width }) {
  // TODO(kilemensi): GridListTile computes the size of item and sets it using
  //                  style. This means we can't use classes since element
  //                  style has higher preference. Hence the use of style here.
  //                  We need to match exact size of StoryCard so we don't end
  //                  up with a lot of spaces around StoryCard.
  let cards = 4;
  if (isWidthDown('md', width)) {
    cards = 3;
  }
  if (isWidthDown('sm', width)) {
    cards = 1;
  }

  return (
    <Grid
      container
      justify="center"
      alignItems="center"
      className={classes.root}
    >
      <GridList className={classes.gridList} cols={cards}>
        {storyData.map(story => (
          <GridListTile
            key={story.index}
            classes={{
              tile: classes.gridListTile,
              root: classes.gridListTileRoot
            }}
          >
            <StoryCard story={story} />
          </GridListTile>
        ))}
      </GridList>
    </Grid>
  );
}

StoryList.propTypes = {
  classes: PropTypes.shape().isRequired,
  storyData: PropTypes.shape().isRequired,
  width: PropTypes.string.isRequired
};

export default withWidth()(withStyles(styles)(StoryList));
