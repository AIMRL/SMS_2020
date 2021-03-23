import React from 'react';
import { Redirect, Route, Switch } from 'react-router';
import TeacherDashboard from '../pages/teacher/dashboard/TeacherDashboard';
import DiaryForm from '../pages/teacher/diary/DiaryForm';
import AttendanceDashboard from '../pages/teacher/attendance/AttendanceDashboard';
import ClassList from '../pages/teacher/classes/ClassList';
import MarkGrade from '../pages/teacher/gradebook/MarkGrade';
import SubjecList from '../pages/teacher/subjects/SubjectList';
import SubjectDashboard from '../pages/teacher/subjects/SubjectDashboard';

const TeacherRouting = () => {
  return (
    <Switch>
      {/* Teacher Module Links */}
      <Route path="/dashboard" component={TeacherDashboard} />
      <Route path="/diary-form" component={DiaryForm} />
      <Route path="/mark-attendance" component={AttendanceDashboard} />
      <Route exact path="/classes" component={ClassList} />
      <Route
        path="/classes/:classSlug/:subjectSlug/gradebook/mark"
        component={MarkGrade}
      />
      <Route exact path="/classes/:classSlug" component={SubjecList} />
      <Route
        path="/classes/:classSlug/:subjectSlug"
        component={SubjectDashboard}
      />
      <Redirect from="/" to="/dashboard" />
    </Switch>
  );
};

export default TeacherRouting;