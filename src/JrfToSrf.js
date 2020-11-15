import React from 'react';
import './table.css'

const JrfToSrf = (props) => {

	if(props.flag===true && props.status==='unupdated'){
		return (
			<table className="outerTable">
				<tbody>
					<tr>
						<td className="pfield">JRF TO SRF</td>
						<td>
							<form onSubmit={props.handleSubmit} encType="multipart/form-data" >
								<table className="innerTable">
									<tbody>
										<tr>
											<td className="pvalue"><input type="file" name="jrftosrf" /></td>
											<td className="pvalue"><input className="button" type="submit" value="Convert" /></td>
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
						<td className="pfield">JRF TO SRF</td>
						<td>
							<table className="innerTable">
								<tbody>
									<tr>
										<td className="pfield">Updated On</td>
										<td className="pvalue">{props.details.convertedOn}</td>
										<td className="pfield">Updated By</td>
										<td className="pvalue">{props.details.convertedBy}</td>
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

export default JrfToSrf;

		