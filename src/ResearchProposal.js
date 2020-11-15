import React from 'react';
import './table.css'

const ResearchProposal = (props) => {

	if(props.flag===true && props.status==='unupdated'){
		return (
			<table className="outerTable">
				<tbody>
					<tr>
						<td className="pfield">RESEARCH PROPOSAL SEMINAR</td>
						<td>
							<form onSubmit={props.handleSubmit} encType="multipart/form-data" >
								<table className="innerTable">
									<tbody>
										<tr>
											<td className="pfield">Date of Examination</td>
											<td className="pfield">Recommendation of DSC</td>
											<td className="pfield">DSC Minutes</td>
										</tr>
										<tr>
											<td className="pvalue"><input type="date" name="date" /></td>
											<td className="pvalue"><select name="RecommendationOfDSC">
													<option value="satisfactory">Satisfactory</option>
													<option value="unsatisfactory">Unsatisfactory</option>
													<option value="" selected >select</option></select>
											</td>
											<td className="pvalue"><input type="file" name="researchproposal" /></td>
										</tr>
										<tr>
											<td className="pvalue"><input className="button" type="submit" value="Submit" /></td>
										</tr>
									</tbody>
								</table>
							</form>
						</td>
					</tr>
				</tbody>
			</table>
		);
	}
	else if(props.flag===true && props.status==='updated'){
		return (
			<table className="outerTable">
				<tbody>
					<tr>
						<td className="pfield">RESEARCH PROPOSAL SEMINAR</td>
						<td>
							<table className="innerTable">
								<tbody>
									<tr>
										<td className="pfield">Date of Examination</td>
										<td className="pvalue">{props.details.dateOfExamination}</td>
										<td className="pfield">Recommendation of DSC</td>
										<td className="pvalue">{props.details.recommendationOfDSC}</td>
									</tr>
									<tr>
										<td className="pfield">Updated On</td>
										<td className="pvalue">{props.details.updatedOn}</td>
										<td className="pfield">Updated By</td>
										<td className="pvalue">{props.details.updatedBy}</td>
									</tr>
									<tr>
										<td className="pfield">DSC Minutes</td>
										<td className="pvalue"><button className="button" onClick={props.handleDownload} >Click Here To Download</button></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>	
		)
	}
	else{
		return null;
	}
}

export default ResearchProposal;

