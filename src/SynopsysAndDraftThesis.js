import React from 'react';
import './table.css'

const SynopsysAndDraftThesis = (props) => {

	if(props.flag===true && props.status1==='unupdated' && props.status2==='unupdated'){
		return (
			<table className="outerTable">
				<tbody>
					<tr>
						<td className="pfield">SYNOPSYS AND DRAFT THESIS</td>
						<td>
							<table className="innerTable">
								<tbody>
									<tr>
										<th>Synopsys data not available</th>
									</tr>
									<tr>
										<th >Dtaft Thesis data not available</th>
									</tr>
								</tbody>
							</table>	
						</td>
					</tr>
				</tbody>
			</table>
		);
	}
	else if(props.flag===true && props.status1==='updated' && props.status2==='unupdated'){
		return (
			<table className="outerTable">
				<tbody>
					<tr>
						<td className="pfield">SYNOPSYS AND DRAFT THESIS</td>
						<td>
							<table className="innerTable">
								<tbody>
									<tr>
										<td className="pfield">Synopsys Uploaded On</td>
										<td className="pfield">Synopsys File</td>
										<td className="pfield">Synopsys Other File</td>
									</tr>
									<tr>
										<td className="pvalue">{props.details1.uploadedOn}</td>
										<td className="pvalue"><input type="button" value="click to download" /></td>
										<td className="pvalue"><input className="button" type="button" value="click to download" /></td>
									</tr>
									<tr>
										<th className="pvalue">Draft Thesis data not available</th>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		);
	}

	else if(props.flag===true && props.status1==='updated' && props.status2==='updated'){
		return (
			<table className="outerTable">
				<tbody>
					<tr>
						<td className="pfield">SYNOPSYS AND DRAFT THESIS</td>
						<td>
							<table>
								<tbody>
									<tr>
										<td className="pfield">Synopsys Uploaded On</td>
										<td className="pfield">Synopsys File</td>
										<td className="pfield">Synopsys Other File</td>
									</tr>
									<tr>
										<td className="pvalue">{props.details1.uploadedOn}</td>
										<td className="pvalue"><input type="button" value="click to download" /></td>
										<td className="pvalue"><input className="button" type="button" value="click to download" /></td>
									</tr>
									<tr>
										<td className="pfield">Draft Thesis Uploaded On</td>
										<td className="pfield">Draft Thesis File</td>
										<td className="pfield">Draft Thesis Other File</td>
									</tr>
									<tr>
										<td className="pvalue">{props.details2.uploadedOn}</td>
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

	else if(props.flag===true && props.status1==='unupdated' && props.status2==='updated'){
		return (
			<table className="outerTable">
				<tbody>
					<tr>
						<td className="pfield">SYNOPSYS AND DRAFT THESIS</td>
						<td>
							<table>
								<tbody>
									<tr>
										<th className="pvalue">Synopsys data not available</th>
									</tr>
									<tr>
										<td className="pfield">Draft Thesis Uploaded On</td>
										<td className="pfield">Draft Thesis File</td>
										<td className="pfield">Draft Thesis Other File</td>
									</tr>
									<tr>
										<td className="pvalue">{props.details2.uploadedOn}</td>
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

export default SynopsysAndDraftThesis;

