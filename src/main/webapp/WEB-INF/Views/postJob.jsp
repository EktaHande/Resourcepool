<%@include file="commonUpper.jsp"%>

<main class="main">
	<div class="card">

		<div class="card-body ">
			<form id="postJob" action="#" method="post" class="">
				<div class="tab container pt-3" style="height: 600px">
					<div class="alert border" role="alert">
						<em class="ri-award-fill mb-0 pb-0 me-4"></em>
						Just a reminder to publish your job post , you will need to
						<a href="">verify your phone number</a>
					</div>
					<div class="row">
						<div class="col-6 d-flex justify-content-center border-end">
							<div class="w-75">
								<div class="d-flex">
									<p class="text-secondary me-4">1/4</p>
									<p class="fw-bold heading-title tab-title">Headline</p>
								</div>
								<h1 class="fw-bold heading-title">Let's start with a strong headline</h1>
								<p>This helps your job post stand out to be the right candidates. It's the first thing they'll see, so make it count!</p>
							</div>
						</div>
						<div class="col-6 d-flex justify-content-center p-3">
							<div class="w-75">
								<div class="m-0 p-0">
									<label for="jobHeadline" class="mb-3 fw-bold">Write headline for your job post</label>
									<input type="text" class=" border-success form-control" name="jobHeadline" id="jobHeadline" />
									<label for="jobHeadline" class="error text-danger"></label>
									<div class="headline-confirm my-3">
										<p class="text-success">We'll match you with candidates that specialize in this field</p>
									</div>
									<p class="fw-bold">Example titles</p>
									<!-- Some borders are removed -->
									<ul class="text-justify">
										<li class="mb-2">Build responsive Wordpress site with bootstrap/Payment functionality</li>
										<li class="mb-2">AR experience needed for vitual product demos(ARCores)</li>
										<li class="mb-2">Developer needed to update Android app UI for new OS/device specs</li>
									</ul>
								</div>
							</div>
						</div>
					</div>



				</div>



				<div class="tab container py-3" style="height: 600px">
					<div class="row mt-3">
						<div class="col-6 d-flex justify-content-center border-end">
							<div class="w-75">
								<div class="d-flex">
									<p class="text-secondary me-4">2/4</p>
									<p class="fw-bold heading-title tab-title">Skills</p>
								</div>
								<h1 class="fw-bold heading-title">What are the main skills required for your work ?</h1>
							</div>
						</div>
						<div class="col-6 d-flex justify-content-center p-3">
							<div class="w-75 ">
								<div class="p-0 post-job-skill">

									<label for="postjobSkill" class="mb-3 fw-bold">Search Skills or add your own</label>
									<div class="search-container">
										<input type="text" name="skillSearch" id="skillSearch" class="ps-5 form-control border-success mb-3" />
										<em class="ri-search-line skill-search"></em>
										<label for="postjobSkill" class="mb-3 fw-bold">Search Skills or add your own</label>
										<div class="">
											<select class="form-select skill-post-select" name="postjobSkill" style="width: 100% !important;" id="postjobSkill" multiple="multiple">
											</select>
										</div>
										<label for="" class="text-success ps-1">
											<em class="p-1 ri-star-fill text-light bg-success border me-2 rounded-circle"></em>
											For thr best result, add 3-5 skills
										</label>
										<label for="postjobSkill" class="error text-danger"></label>
										<div class="selected-div"></div>
										<h6 class="my-3 fw-bold">Popular skills for Web Design</h6>
										<div class="addition-skill-container d-flex flex-wrap"></div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>

				<div class="tab p-3">

					<div class="alert border rounded" role="alert" style="border-radius: 30px;">
						<em class="fa-regular fa-star border rounded-circle p-1"></em>
						<label class="ms-4 text-success">
							<strong> Just a reminder to publish your job post , you'll need to </strong>
							<a href="">verify your phone number</a>
						</label>
					</div>

					<div class="row postJobDiv">
						<div class="col-6 d-flex justify-content-center border-end">
							<div class="w-75">
								<div class="d-flex">
									<p class="text-secondary me-4">3/4</p>
									<p class="fw-bold heading-title tab-title">Scope</p>
								</div>
								<h1 class="fw-bold heading-title">Next, estimate the scope of your work.</h1>
								<p class="text-success mt-3">Consider the size of your project and the time it will take</p>
							</div>
						</div>

						<div class="col-6 d-flex justify-content-center p-3">
							<div class="w-75">
								<div>
									<input class="form-check-input" type="radio" name="mainLabel" id="radioNoLabel1" value="Small" checked>
									<label class="ms-3 text-success">
										<strong>Small</strong>
									</label>
									<p class="text-secondary mt-3 ms-4">Quick and straightforward tasks (ex.update text and images on a webpage)</p>
								</div>
								<div>
									<input class="form-check-input" type="radio" name="mainLabel" id="radioNoLabel1" value="Medium">
									<label class="ms-3 text-success">
										<strong>Medium</strong>
									</label>
									<p class="text-secondary mt-3 ms-4">Well-defined projects(ex.a landing page)</p>
								</div>
								<div>
									<input class="form-check-input" type="radio" name="mainLabel" id="radioNoLabel1" value="Large">
									<label class="ms-3 text-success">
										<strong>Large</strong>
									</label>
									<p class="text-secondary mt-3 ms-4">Longer term or complex initiatives(ex.design and build a full website)</p>
								</div>

								<div class="smallSection">
									<div class="mt-5 d-flex justify-content-between ">
										<label class="text-secondary h4 text-success">less than 1 month</label>
										<em class="fa-solid fa-pencil small-btn border rounded-circle p-2"></em>
									</div>
								</div>

								<div class="mediumSection">
									<div class="mt-5 d-flex justify-content-between ">
										<label class="text-secondary h4 text-success">6 to 12</label>
										<em class="fa-solid fa-pencil medium-btn border rounded-circle p-2"></em>
									</div>
								</div>

								<div class="largeSection">
									<div class="mt-5 d-flex justify-content-between ">
										<label class="text-secondary h4 text-success">More than 1 year</label>
										<em class="fa-solid fa-pencil  large-btn border rounded-circle p-2"></em>
									</div>
								</div>


								<div class="small mt-4">
									<p class="text-success h6">
										<strong> How long will your work take?</strong>
									</p>
									<div class="mt-4">
										<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="">
										<label class="ms-3 text-success h5">
											<strong>3 to 6 months</strong>
										</label>
									</div>
									<div class="mt-4">
										<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="">
										<label class="ms-3 text-success h5">
											<strong>1 to 3 months</strong>
										</label>
									</div>

									<div class="mt-4">
										<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="">
										<label class="ms-3 text-success h5">
											<strong>less than 1 month</strong>
										</label>
									</div>
								</div>


								<div class="mediumDiv mt-4">
									<p class="text-success h6">
										<strong> How long will your work take?</strong>
									</p>

									<div class="mt-4">
										<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="">
										<label class="ms-3 text-success h5">
											<strong>1 to 3 months</strong>
										</label>
									</div>
									<div class="mt-4">
										<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="">
										<label class="ms-3 text-success h5">
											<strong>3 to 6 months</strong>
										</label>
									</div>

									<div class="mt-4">
										<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="">
										<label class="ms-3 text-success h5">
											<strong>6 to 12 months</strong>
										</label>
									</div>
								</div>

								<div class="largeDiv mt-4">
									<p class="text-success h6">
										<strong> How long will your work take?</strong>
									</p>

									<div class="mt-4">
										<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="">
										<label class="ms-3 text-success h5">
											<strong>3 to 6 months</strong>
										</label>
									</div>
									<div class="mt-4">
										<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="">
										<label class="ms-3 text-success h5">
											<strong>6 to 12 months</strong>
										</label>
									</div>

									<div class="mt-4">
										<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="">
										<label class="ms-3 text-success h5">
											<strong>More than 1 year </strong>
										</label>
									</div>
								</div>



							</div>
						</div>
					</div>
				</div>
				<div class="tab">4th</div>
				<div style="overflow: auto;">
					<div class="d-flex justify-content-between">

						<button type="button" class="btn btn-outline-dark rounded-pill" id="prevJobBtn" onclick="nextSkill(-1)">Previous</button>
						<button type="button" class="btn btn-outline-success rounded-pill next" id="nextJobBtn" onclick="nextSkill(1)">Next : Skills</button>

					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="alert alert-success col-3" role="alert" id="success">Employee details has been added successfully!</div>
</main>
<%@include file="commonEnd.jsp"%>



