import React from 'react';

const ViewStudent = (props) => {
	return(
		<div>
			<input type="button" value="ViewStudent" onClick={props.handleEvent} />
		</div>
	);
}

export default ViewStudent;