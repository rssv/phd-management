import React from 'react';
import './PhdProgressReport.css'

const PhdProgressReport = (props) => {
	if(props.flag===true){
		return (
			<div>
				<h1>PHD Progress Report:</h1>
			</div>
		)
	}
	else{
		return null;
	}
}

export default PhdProgressReport;