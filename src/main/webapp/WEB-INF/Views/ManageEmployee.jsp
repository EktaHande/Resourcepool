<%@include file="commonUpper.jsp"%>

<main class="main">
	<div class="">
		<div class="card-body">
			<form id="regEmployeeForm" action="#">
				<div class="d-flex flex-row-reverse justify-content-between">
					<div class="col-10 d-flex justify-content-between card p-3">
						<div class="tab">
							<div class="form-tab-content p-3 w-100">
								<h4 class="mb-4">
									<strong>Personal Details</strong>
								</h4>
								<div class="d-flex mb-5">
									<div class="d-flex col-6">
										<label for="employeeFirstName" class="col-3 my-auto">FirstName<sup>*</sup></label>
										<div class="col-9">
											<input type="text" name="employeeFirstName" id="employeeFirstName" class="form-control col-12" />
										</div>
									</div>
									<div class="d-flex col-6 ms-3">
										<label for="lastName" class="col-3 my-auto">LastName<sup>*</sup></label>
										<div class="col-9">
											<input type="text" name="employeeLastName" id="employeeLastName" class="form-control col-12" />
										</div>
									</div>
								</div>
								<div class="d-flex mb-5">
									<div class="d-flex col-6">
										<label for="employeeEmail" class="col-3 my-auto">Email<sup>*</sup></label>
										<div class="col-9">
											<input type="text" name="employeeEmail" id="employeeEmail" class="form-control col-12" />
										</div>
									</div>
									<div class="d-flex col-6 ms-3">
										<label for="employeeMobile" class="col-3 my-auto">Mobile No<sup>*</sup></label>
										<div class="col-9">
											<input type="number" name="employeeMobile" id="employeeMobile" class="form-control col-12" />
										</div>
									</div>
								</div>
								<div class="d-flex mb-5">
									<div class="d-flex col-6">
										<label for="employeDOB" class="col-3 my-auto">Date Of Birth<sup>*</sup></label>
										<div class="col-9">
											<input type="text" name="employeeDOB" id="employeeDOB" class="form-control col-12" placeholder="dd/mm/yyyy" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab">
						<!--second -->
						</div>
						<div class="tab">
							
						</div>
						<div class="tab"></div>
						<div class="tab"></div>
						<div class="tab"></div>
						<div class="tab"></div>
						<div style="overflow: auto;">
							<div class="d-flex justify-content-between">
								<button type="button" class="btn btn-outline-dark" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
								<button type="button" class="btn btn-outline-primary next" id="nextBtn" onclick="nextPrev(1)" >Next</button>
							</div>
						</div>
					</div>
					<div class="col-2 d-flex flex-column custome-h justify-content-around">
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Personal Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Employement Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Education Qualifications</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex  text-secondary">
							<label for="" class="col-9"> <strong>Expertise Level</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Language</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Employee Rate</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Skill Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</main>
<%@include file="commonEnd.jsp"%>
