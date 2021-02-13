import React, { useEffect, useState } from 'react';
import GradedActivityForm from './GradeTypeForm';
import GradeTypeList from './GradeTypeList';

const Gradebook = () => {
  const [gradeTypeList, setGradeTypeList] = useState([]);

  useEffect(() => {
    const gradeTypes = gradeTypeListConst;
    setGradeTypeList(gradeTypes);
  }, []);

  return (
    <React.Fragment>
      <GradedActivityForm
        gradesList={gradeTypeList}
        setGradeTypeList={setGradeTypeList}
        button={{ text: 'Create', variant: 'contained', color: 'primary' }}
      />

      {/* Grade Type list compnent */}
      <GradeTypeList gradeTypeList={gradeTypeList} />
    </React.Fragment>
  );
};

export default Gradebook;

const gradeTypeListConst = [
  { id: 0, gradeName: 'Quizes', activities: [] },
  { id: 0, gradeName: 'Assignments', activities: [] },
];