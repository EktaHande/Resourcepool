$(document).ready(function() {
const employeeDataForDatatable = JSON.parse(localStorage.getItem("employee"));
	//DataTable for employee Data
	$("#employeeDetail").DataTable({
		data: employeeDataForDatatable,
		deferRender: true,
		responsive: true,
		pagingType: 'full_numbers',
		autoWidth: true,
		jQueryUI: true,
		columns: [
			{
				data: null,
				render: function(value) {
					return value['employeeFirstName'] + ' ' + value['employeeLastName'];
				}
			},
			{
				data: 'employeeEmail'
			},
			{
				data: null,
				render: function(value) {
					const { employmentDetails } = value
					const result = employmentDetails.reduce((total, next) => {
						return total + parseInt(next.TotalWorkExperiance)
					}, 0)
					return result;
				}
			},
			{
				data: null,
				render: function(value) {
					return value['employeeExpertiesLevel'] || "NA";
				}
			},
			{
				data: null,
				render: function(value) {
					const { employeeLanguages } = value;
					return employeeLanguages.map(item => {
						return item.language;
					}).join(", ");
				}
			},
			{
				data: null,
				render: function(value) {
					const { skillDetails } = value;
					return skillDetails['employeeskill'].join(", ");
				}
			},
			{
				data: null,
				render: function() {
					return '<div class="d-flex justify-content-center"><em class="fs-4 me-2 ri-pencil-fill"></em><em class="fs-4 ms-2 text-danger ri-delete-bin-5-fill"></em></div>'
				}
			},
		],
	})
});