import React, { Component } from "react";

import Tabs from "../../common/tabs/tabs";

import { getSubjectData } from "../../../services/subjectService";

import subjectTabs from "../../constants/tabsConsts";

class SubjectDetails extends Component {
  state = { subjectDetail: null };

  componentDidMount() {
    // Get subject details data from the service
    const subjectDetail = getSubjectData();

    // Set state of the component
    this.setState({ subjectDetail });
  }

  render() {
    return (
      <React.Fragment>
        <h1>Subject Details</h1>
        <Tabs subjectTabs={subjectTabs} />
      </React.Fragment>
    );
  }
}

export default SubjectDetails;
