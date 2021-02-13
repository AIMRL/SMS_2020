import React from 'react';
import { Button, makeStyles, Paper } from '@material-ui/core';

const useStyles = makeStyles({
  gradeHeadingRoot: {
    borderBottom: '1px solid black',
    clear: 'both',
  },
  gradeHeading: {
    display: 'inline-block',
    padding: '20px',
    margin: '0',
  },
  floatRight: {
    float: 'right',
    marginTop: '20px',
  },
});

const GradeTypeList = ({ gradeTypeList }) => {
  return (
    <Paper className="paper_padding--sm u_mt_small">
      {gradeTypeList.map((gradeType, index) => {
        return <GradeTypeHeading gradeType={gradeType} key={index} />;
      })}
    </Paper>
  );
};

export default GradeTypeList;

const GradeTypeHeading = ({ gradeType }) => {
  const classes = useStyles();
  return (
    <div className={classes.gradeHeadingRoot}>
      <h2 className={classes.gradeHeading}>{gradeType.gradeName}</h2>
      <span className={classes.floatRight}>
        <Button variant="contained">New</Button>
      </span>
    </div>
  );
};
