import React, {Component} from 'react';
//import Login from './Login';
//import ViewJrfStudent from './ViewJrfStudent';
//import SearchJrfStudent from './SearchJrfStudent';
import StudentDetails from './StudentDetails';
import CourseDetails from './CourseDetails';
import CurrentRegistration from './CurrentRegistration';
import PhdProgressReport from './PhdProgressReport';
import ViewJrfStudent from './ViewJrfStudent';
import SearchJrfStudent from './SearchJrfStudent';
import ComprehensiveExamination from './ComprehensiveExamination';
import ResearchProposal from './ResearchProposal';
import JrfToSrf from './JrfToSrf';
import Presubmission from './Presubmission';
import VivaVoce from './VivaVoce';
import './PhdProgressReport.css'
import './App.css';
import AppState from './AppState';

class App extends Component {
	constructor() {
		super();
		this.state = AppState;
	}

	handleClickOnViewStudent = (event) => {
		this.setState({
			searchStudentDisplayFlag: true,
			studentDetailsDisplayFlag: false,
			courseDetailsDisplayFlag: false,
			currentRegistrationDisplayFlag: false,
			comprehensiveExaminationDisplayFlag: false,
			presubmissionDisplayFlag: false,
			researchProposalDisplayFlag: false,
			jrfToSrfDisplayFlag: false,
			vivaVoceDisplayFlag: false
		});
	}
	handleInputInStudentId = (event) => {
		this.setState({inputId: event.target.value});
	}
	handleClickOnSubmit = (event) => {

    	fetch('/phdReportStatus', {
      	method: 'POST',
      	body: JSON.stringify({studentId: this.state.inputId}),
      	headers: {
      		'Content-Type': 'application/json'}
    	})
    	.then(response => response.json())
  		.then((phdreportstatus) => {
  			console.log(phdreportstatus);
  			this.setState({
  				comprehensiveExaminationStatus: phdreportstatus.comprehensiveExamination,
				researchProposalStatus: phdreportstatus.researchProposalSeminar,
				jrfToSrfStatus: phdreportstatus.jrfToSrf,
				presubmissionStatus: phdreportstatus.preSubmissionSeminar,
				vivaVoceStatus: phdreportstatus.phdVivaVoce,
  			});
  			return true;
		})
  		.then((flag1) => {
  			fetch('/studentDetails', {
      			method: 'POST',
      			body: JSON.stringify({studentId: this.state.inputId}),
      			headers: {
      				'Content-Type': 'application/json'}
    		})
    		.then((response) => {
	    		return response.json();
	    	})
    		.then((studentdetails) => {
    			this.setState({
    				searchStudentDisplayFlag: false,
    				studentDetailsDisplayFlag: true,
    				studentDetails: studentdetails 
    			});
    			return true;
    		})
    		.then((flag2) => {
    			fetch('/courseDetails', {
	      			method: 'POST',
	      			body: JSON.stringify({studentId: this.state.inputId}),
	      			headers: {
	      				'Content-Type': 'application/json'}
	    		})
    			.then((response) => {
	    			return response.json();
	    		})
    			.then((coursedetails) => {
    				this.setState({
    					courseDetailsDisplayFlag: true,
    					courseDetails: coursedetails 
    				});
    				return true;
    			})
    			.then((flag3) => {
    				fetch('/currentRegistration', {
		      			method: 'POST',
		      			body: JSON.stringify({studentId: this.state.inputId}),
		      			headers: {
		      				'Content-Type': 'application/json'}
		    		})
	    			.then((response) => {
	    				return response.json();
	    			})
	    			.then((currentregistration) => {
	    				this.setState({
	    					currentRegistrationDisplayFlag: true,
	    					currentRegistration: currentregistration
	    				});
	    				return true;
	    			})
	    			.then((flag4) => {
		    			fetch('/comprehensiveExaminationDetails', {
			      			method: 'POST',
			      			body: JSON.stringify({studentId: this.state.inputId}),
			      			headers: {
			      				'Content-Type': 'application/json'}
			    		})
		    			.then((response) => {
	    					return response.json();
	    				})
		    			.then((comprehensiveexaminationdetails) => {
		    				this.setState({
		    					comprehensiveExaminationDisplayFlag: true,
		    					comprehensiveExaminationDetails: comprehensiveexaminationdetails 
		    				});
		    				return true;
		    			})
		    			.then((flag5) => {
			    			fetch('/researchProposalDetails', {
				      			method: 'POST',
				      			body: JSON.stringify({studentId: this.state.inputId}),
				      			headers: {
				      				'Content-Type': 'application/json'}
				    		})
			    			.then((response) => {
	    						return response.json();
	    					})
			    			.then((researchproposaldetails) => {
			    				this.setState({
			    					researchProposalDisplayFlag: true,
			    					researchProposalDetails: researchproposaldetails 
			    				});
			    				return true;
			    			})
			    			.then((flag6 ) => {
				    			fetch('/jrfToSrfDetails', {
					      			method: 'POST',
					      			body: JSON.stringify({studentId: this.state.inputId}),
					      			headers: {
					      				'Content-Type': 'application/json'}
					    		})
				    			.then((response) => {
	    							return response.json();
	    						})
				    			.then((jrftosrfdetails) => {
				    				this.setState({

				    				});
				    				return true;
				    			})
				    			.then((flag7) => {
					    			fetch('/presubmissionDetails', {
						      			method: 'POST',
						      			body: JSON.stringify({studentId: this.state.inputId}),
						      			headers: {
						      				'Content-Type': 'application/json'}
						    		})
					    			.then((response) => {
	    								return response.json();
	    							})
					    			.then((presubmissiondetails) => {
					    				this.setState({
					    					presubmissionDisplayFlag: true,
					    					presubmissionDetails: presubmissiondetails 
					    				});
					    				return true;
					    			})
					    			.then((flag8) => {
						    			fetch('/vivaVoceDetails', {
							      			method: 'POST',
							      			body: JSON.stringify({studentId: this.state.inputId}),
							      			headers: {
							      				'Content-Type': 'application/json'}
							    		})
						    			.then((response) => {
	    									return response.json();
	    								})
						    			.then((vivavocedetails) => {
						    				this.setState({
						    					vivaVoceDisplayFlag: true,
						    					vivaVoceDetails: vivavocedetails 
						    				});
						    			});
					    			});
				    			});
			    			});
		    			});	
	    			});
    			});
    		});
		});
  	}

  	handlePresubmissionSubmit = (event) => {
		event.preventDefault();
	    const data = new FormData(event.target);
	    data.append('userName',this.state.userName);
	    data.append('currentInputId',this.state.inputId);

	    fetch('/phdreportpresubmission', {
	      method: 'POST',
	      body: data,
	    })
	    .then((response) => {
	    	return response.json();
	    })
	    .then((data) => {
	    	if(data.status==='SUCCESS'){
	    		alert(data.message);
	    		this.setState({presubmissionStatus: 'updated'});
	    	}
	    });
	}

	handleComprehensiveexaminationSubmit = (event) => {
		event.preventDefault();
	    const data = new FormData(event.target);
	    data.append('userName',this.state.userName);
	    data.append('currentInputId',this.state.inputId);

	    fetch('/phdreportcomprehensiveexamination', {
	      method: 'POST',
	      body: data,
	    })
	    .then((response) => {
	    	return response.json();
	    })
	    .then((data) => {
	    	if(data.status==='SUCCESS'){
	    		alert(data.message);
	    		this.setState({comprehensiveExaminationStatus: 'updated'});
	    	}
	    });
	}

	handleResearchproposalSubmit = (event) => {
		event.preventDefault();
	    const data = new FormData(event.target);
	    data.append('userName',this.state.userName);
	    data.append('currentInputId',this.state.inputId);

	    fetch('/phdreportresearchproposal', {
	      method: 'POST',
	      body: data,
	    })
	    .then((response) => {
	    	return response.json();
	    })
	    .then((data) => {
	    	if(data.status==='SUCCESS'){
	    		alert(data.message);
	    		this.setState({researchProposalStatus: 'updated'});
	    	}
	    });
	}

	handleJrftosrfSubmit = (event) => {
		event.preventDefault();
	    const data = new FormData(event.target);
	    data.append('userName',this.state.userName);
	    data.append('currentInputId',this.state.inputId);

	    fetch('/phdreportjrftosrf', {
	      method: 'POST',
	      body: data,
	    })
	    .then((response) => {
	    	return response.json();
	    })
	    .then((data) => {
	    	if(data.status==='SUCCESS'){
	    		alert(data.message);
	    		this.setState({jrfToSrfStatus: 'updated'});
	    	}
	    });
	}

	handleVivavoceSubmit = (event) => {
		event.preventDefault();
	    const data = new FormData(event.target);
	    data.append('userName',this.state.userName);
	    data.append('currentInputId',this.state.inputId);

	    fetch('/phdreportvivavoce', {
	      method: 'POST',
	      body: data,
	    })
	    .then((response) => {
	    	return response.json();
	    })
	    .then((data) => {
	    	if(data.status==='SUCCESS'){
	    		alert(data.message);
	    		this.setState({vivaVoceStatus: 'updated'});
	    	}
	    });
	}


	render(){
		return (
			<div>
				<section className="flexContainer">
					<div className="flexitem1">
						<ViewJrfStudent handleEvent={this.handleClickOnViewStudent} />
					</div>
					<div className="flexitem2">
						<SearchJrfStudent flag={this.state.searchStudentDisplayFlag} 
							handleInput={this.handleInputInStudentId} 
							handleClick={this.handleClickOnSubmit} />
						<StudentDetails flag={this.state.studentDetailsDisplayFlag}
						    studentDetails={this.state.studentDetails} />		
						<CourseDetails flag={this.state.courseDetailsDisplayFlag} 
							courseDetails={this.state.courseDetails} />
						<CurrentRegistration flag={this.state.currentRegistrationDisplayFlag}
							currentRegistration={this.state.currentRegistration} />
						<ComprehensiveExamination flag={this.state.comprehensiveExaminationDisplayFlag}
							status={this.state.comprehensiveExaminationStatus}
							details={this.state.comprehensiveExaminationDetails}
							handleSubmit={this.handleComprehensiveexaminationSubmit} />
						<ResearchProposal flag={this.state.researchProposalDisplayFlag}
							status={this.state.researchProposalStatus}
							details={this.state.researchProposalDetails}
							handleSubmit={this.handleResearchproposalSubmit} />
						<JrfToSrf flag={this.state.jrfToSrfDisplayFlag}
							status={this.state.jrfToSrfStatus}
							details={this.state.jrfToSrfDetails}
							handleSubmit={this.handleJrftosrfSubmit} />
						<Presubmission flag={this.state.presubmissionDisplayFlag}
							status={this.state.presubmissionStatus}
							details={this.state.presubmissionDetails}
							handleSubmit={this.handlePresubmissionSubmit} />
						<VivaVoce flag={this.state.vivaVoceDisplayFlag}
							status={this.state.vivaVoceStatus}
							details={this.state.vivaVoceDetails}
							handleSubmit={this.handleVivavoceSubmit} />
					</div>
				</section>
			</div>
		);
	}
}


export default App;

	
