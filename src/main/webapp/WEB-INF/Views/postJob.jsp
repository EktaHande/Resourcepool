<%@include file="commonUpper.jsp"%>

<main class="main">
	<div class="card">
		<div class="card-body">
			<form id="postJob" action="#" method="post">
				<div class="tab p-3 ">
					<div class="alert alert-secondary" role="alert">
						Just a reminder to publish your job post , you will need to <a href="">varify your phone number</a>
					</div>
					<div class="row">
						<div class="col-6 p-3 border-end">
							<div class="d-flex">
								<p class="text-secondary me-4">1/4</p>
								<p class="fw-bold">Headline</p>
							</div>
							<h1>Let's start with a strong headline</h1>
							<p>This helps your job post stand out to be the right candidates. It's the first thing they'll see, so make it count!</p>
						</div>
						<div class="col-6 d-flex justify-content-center p-3">
							<div class="w-75">
								<div class="m-0 p-0 ">
									<label for="jobHeadline mb-3"><strong>Write headline for your job post</strong></label> <input type="text" class="form-control"
										name="jobHeadline" id="jobHeadline" /> <label for="jobHeadline" class="error text-danger"></label>
									<div class="headline-confirm mb-3">
										<p class="text-success">We'll match you with candidates that specialize in this field</p>
									</div>
									<p class="fw-bold">Example titles</p>
									<!-- Some borders are removed -->
									<ul class="list-group list-group-flush">
										<li class="list-group-item">Build responsive Wordpress site with bootstrap/Payment functionality</li>
									</ul>
								</div>

							</div>
						</div>
					</div>

				</div>
				<div class="tab p-3">
					<div class="row">
						<div class="col-6 p-3 border-end">
							<div class="d-flex">
								<p class="text-secondary me-4">2/4</p>
								<p class="fw-bold">Skills</p>
							</div>
							<h1>What are the main skills required for your work ?</h1>
						</div>
						<div class="col-6 d-flex justify-content-center p-3">
							<div class="w-75">
								<div class="m-0 p-0 ">
									<label for="postjobSkill"><strong>Search Skills or add your own</strong></label> 
									 <select class="form-select" name="postjobSkill" style="width: 100% !important;" id="postjobSkill"
													multiple="multiple">
													<option value="java">java</option>
													<option value="pyhton">python</option>
													<option value="c#">C#</option>
													<option value="Ajax">Ajax</option>
													<option value="asp.net">Asp.net</option>
													<option value="skill1">skill 1</option>
													<option value="skill2">skill 2</option>
									</select>
									<div class="foo"></div>
									<label for="postjobSkill" class="error text-danger"></label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab">3rd</div>
				<div class="tab">4th</div>
				<div style="overflow: auto;">
					<div class="d-flex justify-content-between">
						<button type="button" class="btn btn-outline-dark rounded-pill" id="prevBtn" onclick="prev(-1)">Previous</button>
						<button type="button" class="btn btn-outline-primary rounded-pill next" id="nextBtn" onclick="nextPrev(1)">Next</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="alert alert-success col-3" role="alert" id="success">Employee details has been added successfully!</div>

</main>
<%@include file="commonEnd.jsp"%>



