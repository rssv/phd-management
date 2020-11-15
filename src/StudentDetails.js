import React from 'react';
import './StudentDetails.css'

const StudentDetails = (props) => {
	if(props.flag===true){
		return (
			<div>
				<h1>Student Details:</h1>
				<table>
					<tbody>
						<tr>
							<td className="sfield">Student Name</td>
							<td className="svalue">{props.studentDetails.first_name + 
								' ' + props.studentDetails.middle_name + ' ' + 
								props.studentDetails.last_name}</td>
						</tr>
						<tr>
							<td className="sfield">E-mail</td>
							<td className="svalue">{props.studentDetails.email}</td>
						</tr>
						<tr>
							<td className="sfield">D.O.B.</td>
							<td className="svalue">{props.studentDetails.dob}</td>
							<td className="sfield">Sex</td>
							<td className="svalue">{props.studentDetails.sex}</td>
						</tr>
						<tr>
							<td className="sfield">Marital Status</td>
							<td className="svalue">{props.studentDetails.marital_status}</td>
							<td className="sfield">Physically Handicaped</td>
							<td className="svalue">{props.studentDetails.physically_challenged}</td>
						</tr>
						<tr>
							<td className="sfield">Branch</td>
							<td className="svalue">{props.studentDetails.dept_id}</td>
						</tr>
						<tr>
							<td className="sfield">Department</td>
							<td className="svalue">{props.studentDetails.dept_id}</td>
						</tr>
					</tbody>
				</table>
			</div>
		);
	}
	else{
		return null;
	}
}

export default StudentDetails;