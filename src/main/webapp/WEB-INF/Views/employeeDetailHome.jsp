<%@include file="commonUpper.jsp"%>
<main class="main">
	<h4>
		<strong>Manage Employee</strong>
	</h4>
	<hr />
	<div class="">
		<a class="btn btn-primary py-2 rounded-pill " href="manageEmployee">
			<strong>+Add Employee</strong>
		</a>
	</div>
	<div class="employeeTable py-2">
		<table class=" table display table-striped  border table-bordered " id="employeeDetail" aria-describedby="Employee Data">
			<thead>
				<tr>
					<th>NAME</th>
					<th>EMAIL</th>
					<th>TOTAL WORK EXPERIANCE</th>
					<th>EXPERTISE LEVEL</th>
					<th>LANGUAGES</th>
					<th>SKILLS</th>
					<th>ACTION</th>
				</tr>
			</thead>
		</table>
	</div>
</main>
<%@include file="commonEnd.jsp"%>