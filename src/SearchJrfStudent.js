import React from 'react';

const SearchJrfStudent = (props) => {

	if(props.flag===true){
		return (
			<div>
				<input type="text" placeholder="enter student id" name="studentId" onChange={props.handleInput} />
				<input type="button" onClick={props.handleClick} value="Submit" />
			</div>
		);
	}
	else 
		return null;
}

export default SearchJrfStudent;