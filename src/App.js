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
import SynopsysAndDraftThesis from './SynopsysAndDraftThesis';
import FinalThesis from './FinalThesis'
import InvalidInput from './InvalidInput'
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
			phdProgressReportDisplayFlag: false,
			comprehensiveExaminationDisplayFlag: false,
			presubmissionDisplayFlag: false,
			researchProposalDisplayFlag: false,
			jrfToSrfDisplayFlag: false,
			vivaVoceDisplayFlag: false,
			synopsysAndDraftThesisDisplayFlag: false,
			finalThesisDisplayFlag: false,
			invalidInputFlag: false
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
    	}).then(res => res.json()).then((details) => {
    		if(details.status==='true'){
	    		this.setState({
	    			comprehensiveExaminationStatus: details.comprehensiveExamination,
					researchProposalStatus: details.researchProposalSeminar,
					jrfToSrfStatus: details.jrfToSrf,
					presubmissionStatus: details.preSubmissionSeminar,
					vivaVoceStatus: details.phdVivaVoce,
					synopsysStatus: details.synopsys,
					draftThesisStatus: details.draftThesis,
					finalThesisStatus: details.finalThesis,
					searchStudentDisplayFlag: false,
				});
    		}
    		else{
    			this.setState({
    				invalidInputFlag: true,
    				searchStudentDisplayFlag: false,
    			})
    		}
    		return details;
    	}).then((details) => {
    		if(details.status==='true'){
	    		fetch('/studentDetails', {
		  			method: 'POST',
		  			body: JSON.stringify({studentId: this.state.inputId}),
		  			headers: {
		  				'Content-Type': 'application/json'}
				}).then(res => res.json()).then((studentdetails) => {
	    			this.setState({
	    				studentDetailsDisplayFlag: true,
	    				studentDetails: studentdetails 
	    			});
	    		});

				fetch('/courseDetails', {
		  			method: 'POST',
		  			body: JSON.stringify({studentId: this.state.inputId}),
		  			headers: {
		  				'Content-Type': 'application/json'}
				}).then(res => res.json()).then((coursedetails) => {
					this.setState({
						courseDetailsDisplayFlag: true,
						courseDetails: coursedetails 
					});
	    		});
				
				fetch('/currentRegistration', {
		  			method: 'POST',
		  			body: JSON.stringify({studentId: this.state.inputId}),
		  			headers: {
		  				'Content-Type': 'application/json'}
				}).then(res => res.json()).then((currentregistration) => {
					this.setState({
						currentRegistrationDisplayFlag: true,
						currentRegistration: currentregistration
					});
				});

				if(this.state.comprehensiveExaminationStatus==='updated'){
					fetch('/comprehensiveExaminationDetails', {
			  			method: 'POST',
			  			body: JSON.stringify({studentId: this.state.inputId}),
			  			headers: {
			  				'Content-Type': 'application/json'}
					}).then(res => res.json()).then((comprehensiveexaminationdetails) => {
	    				this.setState({
	    					comprehensiveExaminationDetails: comprehensiveexaminationdetails 
	    				});
	    			});
				}
				
				if(this.state.researchProposalStatus==='updated'){
					fetch('/researchProposalDetails', {
			  			method: 'POST',
			  			body: JSON.stringify({studentId: this.state.inputId}),
			  			headers: {
			  				'Content-Type': 'application/json'}
					}).then(res => res.json()).then((researchproposaldetails) => {
						this.setState({
							researchProposalDetails: researchproposaldetails 
						});
					});
				}

				if(this.state.jrfToSrfStatus==='updated'){
					fetch('/jrfToSrfDetails', {
			  			method: 'POST',
			  			body: JSON.stringify({studentId: this.state.inputId}),
			  			headers: {
			  				'Content-Type': 'application/json'}
					}).then(res => res.json()).then((jrftosrfdetails) => {
						this.setState({
							jrfToSrfDetails: jrftosrfdetails
						});
					});
				}

				if(this.state.presubmissionStatus==='updated'){
					fetch('/presubmissionDetails', {
			  			method: 'POST',
			  			body: JSON.stringify({studentId: this.state.inputId}),
			  			headers: {
			  				'Content-Type': 'application/json'}
					}).then(res => res.json()).then((presubmissiondetails) => {
						this.setState({
							presubmissionDetails: presubmissiondetails 
						});
					});
				}

				if(this.state.vivaVoceStatus==='updated'){
					fetch('/vivaVoceDetails', {
			  			method: 'POST',
			  			body: JSON.stringify({studentId: this.state.inputId}),
			  			headers: {
			  				'Content-Type': 'application/json'}
					}).then(res => res.json()).then((vivavocedetails) => {
						this.setState({
							vivaVoceDetails: vivavocedetails 
						});
					});
				}	
    		}
    		return details;	
    	}).then((details) => {
    		if(details.status==='true'){
    			this.setState({
	    			phdProgressReportDisplayFlag: true,
	    			comprehensiveExaminationDisplayFlag: true,
					presubmissionDisplayFlag: true,
					researchProposalDisplayFlag: true,
					jrfToSrfDisplayFlag: true,
					vivaVoceDisplayFlag: true,
					synopsysAndDraftThesisDisplayFlag: true,
					finalThesisDisplayFlag: true
	    		});
    		}	
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
	    }).then((response) => {
	    	return response.json();
	    }).then((data) => {
	    	this.setState({presubmissionDetails: data});
	  		return data;
	    })
	    .then((data) => {
	    	alert(data.message);
	    	if(data.status==='SUCCESS'){
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
	    }).then((response) => {
	    	return response.json();
	    }).then((data) => {
	    	this.setState({comprehensiveExaminationDetails: data});
	  		return data;
	    })
	    .then((data) => {
	    	alert(data.message);
	    	if(data.status==='SUCCESS'){
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
	    }).then((response) => {
	    	return response.json();
	    }).then((data) => {
	    	this.setState({researchProposalDetails: data});
	  		return data;
	    })
	    .then((data) => {
	    	alert(data.message);
	    	if(data.status==='SUCCESS'){
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
	    }).then((response) => {
	    	return response.json();
	    }).then((data) => {
	    	this.setState({jrfToSrfDetails: data});
	  		return data;
	    })
	    .then((data) => {
	    	alert(data.message);
	    	if(data.status==='SUCCESS'){
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
	    }).then((response) => {
	    	return response.json();
	    }).then((data) => {
	    	this.setState({vivaVoceDetails: data});
	  		return data;
	    })
	    .then((data) => {
	    	alert(data.message);
	    	if(data.status==='SUCCESS'){
	    		this.setState({vivaVoceStatus: 'updated'});
	    	}
	    });
	}

	handleComprehensiveExaminationDownload = (event) => {
		window.open(`/ComprehensiveExaminationDownload/${this.state.inputId}`);
	}

	handleResearchProposalDownload = (event) => {
		window.open(`/ResearchProposalDownload/${this.state.inputId}`);
	}

	handleJrfToSrfDownload = (event) => {
		window.open(`/JrfToSrfDownload/${this.state.inputId}`);
	}

	handlePreSubmissionDownload = (event) => {
		window.open(`/PreSubmissionDownload/${this.state.inputId}`);
	}

	handleVivaVoceDownload = (event) => {
		window.open(`/VivaVoceDownload/${this.state.inputId}`);
	}


	render(){
		return (
			<div>
				<section className="flexContainer">
					<div className="flexitem1">
						<ViewJrfStudent handleEvent={this.handleClickOnViewStudent} />
					</div>
					<div className="flexitem2">
						<InvalidInput flag={this.state.invalidInputFlag} />
						<SearchJrfStudent flag={this.state.searchStudentDisplayFlag} 
							handleInput={this.handleInputInStudentId} 
							handleClick={this.handleClickOnSubmit} />
						<StudentDetails className="component" flag={this.state.studentDetailsDisplayFlag}
						    studentDetails={this.state.studentDetails} />		
						<CourseDetails className="component" flag={this.state.courseDetailsDisplayFlag} 
							courseDetails={this.state.courseDetails} />
						<CurrentRegistration className="component" flag={this.state.currentRegistrationDisplayFlag}
							currentRegistration={this.state.currentRegistration} />
						<PhdProgressReport className="component" flag={this.state.phdProgressReportDisplayFlag} />
						<ComprehensiveExamination flag={this.state.comprehensiveExaminationDisplayFlag}
							status={this.state.comprehensiveExaminationStatus}
							details={this.state.comprehensiveExaminationDetails}
							handleSubmit={this.handleComprehensiveexaminationSubmit}
							handleDownload={this.handleComprehensiveExaminationDownload} />
						<ResearchProposal flag={this.state.researchProposalDisplayFlag}
							status={this.state.researchProposalStatus}
							details={this.state.researchProposalDetails}
							handleSubmit={this.handleResearchproposalSubmit}
							handleDownload={this.handleResearchProposalDownload} />
						<JrfToSrf flag={this.state.jrfToSrfDisplayFlag}
							status={this.state.jrfToSrfStatus}
							details={this.state.jrfToSrfDetails}
							handleSubmit={this.handleJrftosrfSubmit}
							handleDownload={this.handleJrfToSrfDownload} />
						<SynopsysAndDraftThesis flag={this.state.synopsysAndDraftThesisDisplayFlag} 
							status1={this.state.synopsysStatus} status2={this.state.draftThesisStatus}
							details1={this.state.synopsysDetails} details2={this.state.draftThesisDetails}/>
						<Presubmission flag={this.state.presubmissionDisplayFlag}
							status={this.state.presubmissionStatus}
							details={this.state.presubmissionDetails}
							handleSubmit={this.handlePresubmissionSubmit}
							handleDownload={this.handlePreSubmissionDownload} />
						<VivaVoce flag={this.state.vivaVoceDisplayFlag}
							status={this.state.vivaVoceStatus}
							details={this.state.vivaVoceDetails}
							handleSubmit={this.handleVivavoceSubmit}
							handleDownload={this.handleVivaVoceDownload} />
						<FinalThesis flag={this.state.finalThesisDisplayFlag} 
							status={this.state.finalThesisStatus} 
							details={this.state.finalThesisDetails} />
					</div>
				</section>
			</div>
		);
	}
}


export default App;

	