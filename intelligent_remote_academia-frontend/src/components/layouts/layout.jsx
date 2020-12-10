import React, { Component } from "react";
import MainContent from "./mainContent/mainContent";
import Sidebar from "./sidebar/sidebar";

import http from "../../services/httpService";

class Layout extends Component {
  state = { dashboardInfo: null };

  async componentDidMount() {
    try {
      // Get parent personal info from the service
      const { data } = await http.get(`/subjects`);

      const { dashboard: dashboardInfo } = data;

      this.setState({ dashboardInfo });
    } catch (error) {
      if (error.response && error.response.status === 401) {
        window.location = "/login";
      } else if (error.response && error.response.status === 404) {
        window.location = "/notFound";
      }
    }
  }
  render() {
    const { dashboardInfo } = this.state;
    if (dashboardInfo) {
      const studentId = dashboardInfo.students[2].id;
      const classId = dashboardInfo.students[2].classId;
      const sessionId = dashboardInfo.students[2].sessionId;

      return (
        <React.Fragment>
          <Sidebar userInfo={dashboardInfo.parentInfo}>
            <MainContent
              subjects={dashboardInfo.subjects[2]}
              studentId={studentId}
              classId={classId}
              sessionId={sessionId}
            />
          </Sidebar>
        </React.Fragment>
      );
    }
    return null;
  }
}

export default Layout;
