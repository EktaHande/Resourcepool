<%@include file="commonUpper.jsp"%>

<main class="main">
	<div class="card">
		<div class="card-body ">
			<form id="postJob" action="#" method="post" class="">
				<div class="tab container pt-3" style="height: 600px">
					<div class="alert border" role="alert">
						<i class="ri-award-fill mb-0 pb-0 me-4"></i>Just a reminder to publish your job post , you will need to <a href="">varify your phone number</a>
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
									<label for="jobHeadline" class="mb-3 fw-bold">Write headline for your job post</label> <input type="text" class="border-success form-control"
										name="jobHeadline" id="jobHeadline" /> <label for="jobHeadline" class="error text-danger"></label>
									<div class="headline-confirm mb-3">
										<p class="text-success">We'll match you with candidates that specialize in this field</p>
									</div>
									<p class="fw-bold">Example titles</p>
									<!-- Some borders are removed -->
									<ul class="text-justify">
										<li class="mb-2">Build responsive Wordpress site with bootstrap/Payment functionality</li>
										<li class="mb-2">Build responsive Wordpress site with bootstrap/Payment functionality</li>
										<li class="mb-2">Build responsive Wordpress site with bootstrap/Payment functionality site with bootstrap/Payment functionality</li>
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
							<div class="w-75">
								<div class="p-0 post-job-skill">
									<label for="postjobSkill" class="mb-3 fw-bold">Search Skills or add your own</label> 
									<div class="">
									<select class="form-select skill-post-select"
										name="postjobSkill" style="width: 100% !important;" id="postjobSkill" multiple="multiple">
									</select>
									</div>
									<label for="postjobSkill" class="error text-danger"></label>
									<div class="selected-div">
										<p class="text-secondary mt-2">Selected Skills</p>
										<div class="foo"></div>
									</div>
									<h6 class="my-3 fw-bold">Popular skills for Web Design</h6>
									<div class="addition-skill-container d-flex flex-wrap"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab"><p class="fw-bold heading-title tab-title">new1</p></div>
				<div class="tab"><p class="fw-bold heading-title tab-title">new2</p></div>
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



