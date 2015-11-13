<%@include file="init.jsp"%>

<portlet:actionURL var="updateProtfolioURL">
	<portlet:param name="action" value="updateProtfolio"/>
</portlet:actionURL>

<portlet:resourceURL id="editProtfolio" var="editProtfolio" ></portlet:resourceURL> 
<portlet:resourceURL id="deleteProtfolio" var="deleteProtfolio" ></portlet:resourceURL> 


<div class="container-fluid">

<div class="row-fluid">
				<div class="span12" >
					<div class="span4"><h4>Manage Portfolio</h4></div>		
								
				</div>
</div>
<div class="row-fluid">
				<div class="span12" style="border-bottom: 1px solid #003d59; margin-bottom: 35px">
					<div class="span12"><h6>Conveniently manage your Portfolio.</h6></div>		
								
				</div>
</div>

<form:form   method="post" commandName="investorDTO"
	action="${updateProtfolioURL}" id="investorModel" name="investorModel" class="form-horizontal">
	<input type="hidden" name="investorID" value="${investorID}" />
	
		<div class="table-responsive">
			<table class="table table-hover tablesorter table-bordered"  id="companyListTable">
				<thead>
					<tr>
						<th>SCF Company</th>
						<th>Current Credit Line</th>
						<th>My Credit Line</th>
						<th>BPS</th>
						<th>Utilised</th>
						<th>Available</th>	
						<th></th>										
					</tr>
				</thead>
				<tbody>
				 <c:choose>
					<c:when test="${fn:length(investorHistoryList) gt 0}">
						<c:forEach items="${investorHistoryList}" var="investorProt">
							<tr>
								<td >${investorProt.company.name} </td>
								<td>${investorProt.currentCreditLine}</td>
								<td>${investorProt.myCreditLine}</td>
								<td>${investorProt.discountRate}</td>
								<td>${investorProt.amountInvested}</td>
								<td>${investorProt.availToInvest}</td>
								<th style="font-size: 25px;"><a href="javascript:void(0);" title="Edit" class="editInvestor" id="${investorProt.investorProtId}_"><i class="fa fa fa-pencil-square-o fa-3"></i></a> <%-- <a href="${deleteProtfolio}id=${investorProt.investorProtId}" title="Edit" ><i class="fa fa-trash"></i></a> --%> </th>	
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
							<tr>
								<td colspan="6" align="center" style="text-align: center;">Protfolio information not found!</td>
							</tr>
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
		</div>
		<div class="row-fluid">
			<div class="span6">
				 <button type="button" class="btn btn-primary addButton span3"><i class="fa fa-plus"></i> Add Protfolio</button>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span12"></div>
		</div>
		<div id="protfolioTemplate" class="parentclass hide">
		
			<div class="row-fluid" >
				<div class="span6">
					<div class="span6">
						<select id="scfCompany" name="investorModel.company.id"   class="span9 scfDropDown">
								 <option value="" disabled selected>Select SCF Company*</option>
								<c:forEach var="company" items="${companyList}">
									<option value="${company.id}">${company.name}</option>
								</c:forEach>			
							</select>
					</div>
					<div class="span6">
						<input  type="text" name="investorModel.currentCreditLine" class="span9" id="creditLine" placeholder="Current Credit Line" />
					</div>
				</div>
				<div class="span6">
					<div class="span6">
						<input  	type="text" name="investorModel.myCreditLine" 	class="span9" 	id="myCreditLne" placeholder="My Credit Line*" />
					</div>
				</div>
	
			</div>
			<div class="row-fluid">
				<div class="span12"></div>
			
			</div>
			<div class="row-fluid" >
				<div class="span6">
					<div class="span6">
						<input type="text" name="investorModel.discountRate" class="span9" id="discountRate" placeholder="Offered BPS*" />
					</div>
					<div class="span6">
							<!-- <input  type="text" name="investorModel.amountInvested" class="span9" id="amountInvested" placeholder="Utilized" /> -->
						 <button type="button" class="btn btn-primary removeButton"><i class="fa fa-minus"></i> Remove</button>
					</div>
				</div>
			<!-- 	<div class="span6">
					<div class="span6">
						<input type="text" name="investorModel.availToInvest" class="span9" id="availToInvest" placeholder="Available" />
					</div>
					<div class="span6">
						  <button type="button" class="btn btn-primary removeButton"><i class="fa fa-minus"></i> Remove</button>
					</div>
				</div> -->
	
			</div>
			<hr>
		</div>
		
		<div id="editTemplate" class="parentclass hide">
		
			<div class="row-fluid" >
				<div class="span6">
					<div class="span6">
						<label class="span6 scfCompany" >Alternate Name:</label>
					</div>
					<div class="span6">
						<input  type="text" name="currentCreditLine" class="span9" id="currentCreditLine" placeholder="Current Credit Line" />
					</div>
				</div>
				<div class="span6">
					<div class="span6">
						<input  	type="text" name="myCreditLine" 	class="span9" 	id="myCreditLne" placeholder="My Credit Line*" />
					</div>
				</div>
	
			</div>
			<div class="row-fluid">
				<div class="span12"></div>
			
			</div>
			<div class="row-fluid" >
				<div class="span6">
					<div class="span6">
						<input type="text" name="discountRate" class="span9" id="discountRate" placeholder="Offered BPS*" />
					</div>
					<div class="span6">
							<!-- <input  type="text" name="investorModel.amountInvested" class="span9" id="amountInvested" placeholder="Utilized" /> -->
						 <button type="button" class="btn btn-primary removeButton"><i class="fa fa-minus"></i> Remove</button>
					</div>
				</div>
			<!-- 	<div class="span6">
					<div class="span6">
						<input type="text" name="investorModel.availToInvest" class="span9" id="availToInvest" placeholder="Available" />
					</div>
					<div class="span6">
						  <button type="button" class="btn btn-primary removeButton"><i class="fa fa-minus"></i> Remove</button>
					</div>
				</div> -->
	
			</div>
			<hr>
		</div>

		<div class="row-fluid">
			<div class="span12"></div>
		</div>
		

		<div class="row-fluid">
			<div class="span6">

				<input type="submit" value="Update Protfolio"
					class="btn btn-primary" /> <input type="button" value="Go Back"
					class="btn btn-primary" />
			</div>
			<div class="span6"></div>
		</div>

	</form:form>
<%-- <div class="table-responsive">
	<table class="table table-hover tablesorter table-bordered">
		<thead>
			<tr>
				<th>Discount Rate</th>
				<th>Investment Cap</th>
				<th>Start End</th>
				<th>End Date</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(investorHistoryList) gt 0}">
					<c:forEach items="${investorHistoryList}" var="investorHis">
						<tr>
							<td>${investorHis.discountRate}</td>
							<td>${investorHis.investmentCap}</td>
							<td>${investorHis.startDate}</td>
							<td>${investorHis.endDate}</td>
												
						</tr>
					</c:forEach>
			</c:when>
			<c:otherwise>
							<tr>
								<td colspan="4" align="center" style="text-align: center;"> No History found!</td>
							</tr>
			</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</div>
 --%>


</div>

		<div id="editConfirmationModel" class=" modal fade" tabindex="-1"
			role="dialog" aria-labelledby="editConfirmationModelLabel"
			aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" id="first"
					aria-hidden="true">�</button>
				<h4 id="myModalLabel">Edit Confirmation</h4>
			</div>
			<div class="modal-body">
				<p>Are you sure you want to continue? All unsaved information would be lost.</p>
			</div>
			<div class="modal-footer">
				<input type="submit" value="Edit Protfolio" class="btn btn-primary" id="last"/>
				<button class="btn" data-dismiss="modal" aria-hidden="true">No</button>
				
			</div>
		</div>




