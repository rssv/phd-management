import React from 'react';
import './table.css'

const FinalThesis = (props) => {

	if(props.flag===true && props.status==='unupdated'){
		return (
			<table className="outerTable">
				<tbody>
					<tr>
						<td className="pfield">FINAL THESIS</td>
						<td>
							<table className="innerTable">
								<tbody>
									<tr>
										<th>Final Thesis data not available</th>
									</tr>
								</tbody>
							</table>	
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
						<td className="pfield">SYNOPSYS AND DRAFT THESIS</td>
						<td>
							<table className="innerTable"> 
								<tbody>
									<tr>
										<td className="pfield">Final Thesis Uploaded On</td>
										<td className="pfield">Final Thesis File</td>
										<td className="pfield">Final Thesis Other File</td>
									</tr>
									<tr>
										<td className="pvalue">{props.details.uploadedOn}</td>
										<td className="pvalue"><input type="button" value="click to download" /></td>
										<td className="pvalue"><input className="button" type="button" value="click to download" /></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		);
	}
	else {
		return null;
	}
}

export default FinalThesis;

