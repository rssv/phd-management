import React from 'react';
import './CourseDetails.css'

function CourseDetails(props) {

	if(props.flag===true){
		const tableRows = props.courseDetails.map((currentDetails) => {
			return (
				<tr key={currentDetails.srNo}>
					<td className="data">{currentDetails.srNo}</td>
					<td className="data">{currentDetails.courseCode}</td>
					<td className="data">{currentDetails.courseName}</td>
					<td className="data">{currentDetails.session}</td>
					<td className="data">{currentDetails.sessionYear}</td>
					<td className="data">{currentDetails.grade}</td>			
				</tr>
			);
		})
		return (
			<div>
				<h1>Course Details</h1>
				<table>
					<tbody>
						<tr>
							<th className="header">Sr. No.</th>
							<th className="header">Course Code</th>
							<th className="header">Course Name</th>
							<th className="header">Session</th>
							<th className="header">Session Year</th>
							<th className="header">Grade</th>
						</tr>
						{tableRows}
					</tbody>	
				</table>
			</div>
		);
	}
	else{
		return null;
	}
}

export default CourseDetails;