import React from "react";

import { Redirect, Route, Switch } from "react-router-dom";

import Subjects from "../../pages/subjects/subjects";
import Attendance from "../../pages/attendance/attendance";
import SubjectDetails from "../../pages/subjects/subjectDetails";
import GradeDetails from "../../pages/subjects/gradeDetails";
import Announcements from "../../pages/announcements/announcements";

import { useStyles } from "../../constants/mainContentConsts";
import FeeChallan from "../../pages/fee-challan/feeChallan";
import StudentDropdown from "../../studentDropdown/studentDropdown";

const MainContent = ({
  subjects,
  studentList,
  selectedStudent,
  studentId,
  classId,
  onClick,
}) => {
  const classes = useStyles();

  return (
    <main className="container">
      <div className={classes.container}>
        <Switch>
          <Route
            path="/subjects/:subjectSlug/:gradeTypeSlug"
            component={GradeDetails}
          />
          <Route path="/subjects/:subjectSlug" component={SubjectDetails} />

          {/* Sending subjects array as a prop to Subject component */}
          <Route
            path="/subjects"
            render={() => (
              <StudentDropdown
                studentList={studentList}
                onClick={onClick}
                selectedStudent={selectedStudent}
              >
                <Subjects
                  subjects={subjects}
                  studentId={studentId}
                  classId={classId}
                />
              </StudentDropdown>
            )}
          />
          <Route
            path="/attendance"
            render={() => (
              <StudentDropdown
                studentList={studentList}
                onClick={onClick}
                selectedStudent={selectedStudent}
              >
                <Attendance studentId={studentId} classId={classId} />
              </StudentDropdown>
            )}
          />
          <Route
            path="/announcements"
            render={() => (
              <StudentDropdown
                studentList={studentList}
                onClick={onClick}
                selectedStudent={selectedStudent}
              >
                <Announcements />
              </StudentDropdown>
            )}
          />
          <Route
            path="/challan"
            render={() => (
              <StudentDropdown
                studentList={studentList}
                onClick={onClick}
                selectedStudent={selectedStudent}
              >
                <FeeChallan studentId={studentId} classId={classId} />
              </StudentDropdown>
            )}
          />
          <Redirect from="/" to="/subjects" exact />
        </Switch>
      </div>
    </main>
  );
};

export default MainContent;
