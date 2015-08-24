<%@include file="init.jsp"%>
<portlet:actionURL var="createCompanyURL">
	<portlet:param name="action" value="createCompany" />
</portlet:actionURL>

<portlet:actionURL var="regCompanyURL">
	<portlet:param name="action" value="registerCompany" />
</portlet:actionURL>

<portlet:renderURL var="createUserURL">
	<portlet:param name="render" value="createUser" />
</portlet:renderURL>

<portlet:actionURL var="deleteCompanyURL">
	<portlet:param name="action" value="deleteCompany" />
</portlet:actionURL>
<portlet:renderURL var="companyListURL">
</portlet:renderURL>

<portlet:renderURL var="defaultRender">
</portlet:renderURL>


<div class="container-fluid">
	<form:form commandName="companyModel" method="post"
		action="${createCompanyURL}" id="createCompany" autocomplete="off"
		name="companyDetail">
		<input type="hidden" value="${deleteCompanyURL}" id="deleteURL">	
			<div class="row-fluid">
				<div class="span12" style="padding-bottom: 30px;">
					<div class="span4"></div>
					<div class="span4">
						<h4>Add Company Information</h4>
					</div>
				</div>
			</div>
	
		

		<div class="row-fluid">
			<div class="span6">
				<label class="span6">Name:</label> <input type="hidden" name="id" value="${companyModel.id}" />
				<form:input path="name" name="" cssClass="span6" />

			</div>
			<div class="span6">
				<label class="span6">Alternate Name:</label>
				<form:input path="altname" cssClass="span6" />
			</div>
		</div>
		<div class="row-fluid">
			<div class="span6">
				<label class="span6">Registration Number:</label>
				<form:input path="regNumber" cssClass="span6" />

			</div>
			<div class="span6">
				<label class="span6">Date Established:</label>
				<form:input path="dateestablished" cssClass="span5"
					id="dateestablished" />

			</div>

		</div>
		<div class="row-fluid">
			<div class="span6">
				<label class="span6">Address Registered:</label>
				<form:input path="addRegistered" cssClass="span6" />
			</div>

			<div class="span6">
				<label class="span6">Address Trading:</label>
				<form:input path="addTrading" cssClass="span6" />
			</div>

		</div>
		<div class="row-fluid">
			<div class="span6">
				<label class="span6">Telephone No:</label>
				<form:input path="telnumber" cssClass="span6" />

			</div>
			<div class="span6">
				<label class="span6">URL:</label>
				<form:input path="website" cssClass="span6" />
			</div>
		</div>

		<div class="row-fluid">
			<div class="span6">
				<label class="span6">Organisation Type:</label>
				<form:select path="orgType" items="${orgTypeMap}" class="dropdown"
					id="orgType" placeholder="Organisation Type" />
			</div>


			<div class="span6">
				<label class="span6">Company Type:</label>
				<form:select path="companyType" items="${companyTypeMap}"
					class="dropdown" id="companyType" placeholder="CompanyType Type" />

			</div>



		</div>
		<div class="row-fluid">
			<div class="span6">
				<label class="span6">Directors:</label>
				<form:input path="directors" cssClass="span6" />

			</div>
			<div class="span6">
				<label class="span6">Shareholders:</label>
				<form:input path="shareholders" cssClass="span6" />
			</div>
		</div>
		<div class="row-fluid">
			<div class="span6">
				<label class="span6">Customers:</label>
				<form:input path="customers" cssClass="span6" />

			</div>
			<div class="span6">
				<label class="span6">Jurisdiction:</label>
				<form:input path="jurisdiction" cssClass="span6" />
			</div>
		</div>
		<div class="row-fluid">
			<div class="span6">
				<label class="span6">Business type:</label>
				<form:input path="bustype" cssClass="span6" />

			</div>
			<div class="span6">
				<label class="span6">Company Reference :</label>
				<form:input path="companyreference" cssClass="span6" />
			</div>
		</div>
		
		<div class="row-fluid">
			<div class="span6">
				<c:choose>
					<c:when test="${companyModel.id !=null && companyModel.id !=0}">
						<input type="button" value="Update" class="btn btn-primary"
							data-url="${createCompanyURL}" id="cmpUpdate" />
						<input type="button" value="Delete" class="btn btn-danger"
							onclick="deleteCompany()" />
					</c:when>					
					<c:otherwise>
						<input type="button" value="Add Company" class="btn btn-primary"
							data-url="${createCompanyURL}" id="cmpAdd" />
					</c:otherwise>

				</c:choose>



				<input type="button" value="Go Back" class="btn btn-primary"
					data-url="${companyListURL}" id="cmpback" />
			</div>
		</div>


	</form:form>
	<c:if test="${companyModel.id !=null && companyModel.id !=0}">
		<div class="row-fluid">
			<div class="span6">
				<h4>Manage Users</h4>
			</div>
			<div class="span6">
				<div class="span12">
					<h4 style="float: right !important;">
						<a href="${createUserURL}&companyID=${companyModel.id}"
							style="color: #295780; font-weight: bold;"><i
							class="fa fa fa-plus"></i> Add User</a>
					</h4>
				</div>
			</div>
		</div>

		<div class="table-responsive">
			<table class="table table-hover tablesorter table-bordered">
				<thead>
					<tr>
						<th>Firstname</th>
						<th>Lastname</th>
						<th>Username</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Level</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">
						<tr
							onclick="window.location.href='${createUserURL}&userID=${user.id}'">
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.username}</td>
							<td>${user.email}</td>
							<td>${user.mobile}</td>
							<td>${user.level}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</c:if>
</div>

<div id="deleteCompany" title="Are you sure you want to delete?">
	<div class="message">
		Are you sure you want to delete this Company? 
		<br />
		Please remember all the user who are associated with company will also be deleted.
		<hr>Press 'Continue' to delete or 'Cancel' to go back
	</div>
</div>
