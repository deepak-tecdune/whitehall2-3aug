<%@include file="init.jsp"%>

<portlet:renderURL var="createURL">
	<portlet:param name="render" value="createCompany" />
</portlet:renderURL>

<style>
.aui input, .aui textarea, .aui .uneditable-input {
	width: 100% !important;
}
</style>


<div class="container-fluid">


	<form:form commandName="companyModel" method="post"
		action="${createURL}" id="companyList" autocomplete="off">

		<div class="row-fluid">
			<div class="span6">
				<h4>Manage Companies</h4>
				<h6 style="float: right !important;"><a href="${createURL}" style="color: #295780;font-weight: bold;"><i class="fa fa fa-plus"></i> Add Company</a></h6>
			</div>
			<div class="span6">  
			  <div class="span12">
			  	<h5 style="float: right !important;" ><a href="${createURL}" style="color: #295780;font-weight: bold;"> Export</a></h5>
			  </div>
			  </div>			
		</div>
		<div class="table-responsive">
			<table class="table table-hover tablesorter table-bordered">
				<thead>
					<tr>
						<th>Name</th>
						<th>Registration No.</th>
						<th>Address Registered</th>
						<th>Established date</th>
						<th>URL</th>
						<th>Tel Number</th>
						<th>Status</th>						
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${allCompanies}" var="company">
						<tr onclick="window.location.href='${createURL}&companyID=${company.id}'">
							<td>${company.name} </td>
							<td>${company.regNumber}</td>
							<td>${company.addRegistered}</td>
							<td>${company.dateestablished}</td>
							<td>${company.website}</td>
							<td>${company.telnumber}</td>
							<td>${company.activestatus}</td>							
							<%-- <td>
								<button class="btn deleteButton" data-title="Delete" type="button"
									tradeId="${trade.id}">
									<i class="fa fa-trash fa-2"></i>
								</button>
							</td> --%>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</form:form>



</div>