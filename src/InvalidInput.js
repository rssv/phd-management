import React from 'react';

const InvalidInput = (props) => {

	if(props.flag===true){
		return (
			<div>
				<h1>Invalid Input</h1>
			</div>
		);
	}
	else{
		return null;
	}
}

export default InvalidInput;