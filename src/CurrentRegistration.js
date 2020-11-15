import React from 'react';
import './CurrentRegistration.css'

const CurrentRegistration = (props) => {

	if(props.flag===true){
		return (
			<div>
				<h1>Current Registration:</h1>
				<table>
					<tbody>
						<tr>
							<td className="rfield">Session</td>
							<td className="rvalue">{props.currentRegistration.session}</td>
							<td className="rfield">Session Year</td>
							<td className="rvalue">{props.currentRegistration.sessionYear}</td>
						</tr>	
						<tr>
							<td className="rfield">Semester</td>
							<td className="rvalue">{props.currentRegistration.semester}</td>
							<td className="rfield">Date of Registration</td>
							<td className="rvalue">{props.currentRegistration.dateOfRegistration}</td>
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

export default CurrentRegistration;