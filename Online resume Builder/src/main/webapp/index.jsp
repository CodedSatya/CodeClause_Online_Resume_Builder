<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Online Resume Builder</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous" />

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
</head>

<body>


	<div class="container">
		<form action="resume" method="post" enctype="multipart/form-data">

			<!-- PERSONAL INFO -->

			<div class="">
				<h1>Personal Info</h1>
				<div class="row">
					<div class="form-group col-6">
						<label for="fname">First Name</label> <input type="text"
							class="form-control" id="fname" name="fname" />
					</div>

					<div class="form-group col-6">
						<label for="lname">Last Name</label> <input type="text"
							class="form-control" id="lname" name="lname" />
					</div>
				</div>

				<div class="form-group">
					<label for="email">Email address:</label> <input type="email"
						class="form-control" id="email" name="email" />
				</div>

				<div class="form-group">
					<label for="phone">Phone:</label> <input type="number"
						class="form-control" id="phone" name="phone" />
				</div>
			</div>
			<br>



			<!-- EDUCATION -->

			<div class="">
				<h1>Education</h1>
				<div class="form-group">
					<label for="education">Education:</label> <input type="text"
						class="form-control" id="education" name="education" />
				</div>

				<div class="row">
					<div class="form-group col-6">
						<label for="school">School</label> <input type="text"
							class="form-control" id="school" name="school" />
					</div>

					<div class="form-group col-6">
						<label for="s-city">City</label> <input type="text"
							class="form-control" id="s-city" name="s-city" />
					</div>
				</div>

				<div class="row">
					<div class="form-group col-6">
						<label for="s-s-date">Start Date:</label> <input type="month"
							class="form-control" id="s-s-date" min="2018-08" name="s-s-date" />
					</div>

					<div class="form-group col-6">
						<label for="s-e-date">End Date:</label> <input type="month"
							class="form-control" id="s-e-date" min="2018-08" name="s-e-date" />
					</div>


				</div>


				<!-- EMPLOYMENT -->


				<div class="">
					<h1>Employment</h1>
					<div class="form-group">
						<label for="position">Position:</label> <input type="text"
							class="form-control" id="position" name="position" />
					</div>

					<div class="row">
						<div class="form-group col-6">
							<label for="employer">Employer</label> <input type="text"
								class="form-control" id="employer" name="employer" />
						</div>

						<div class="form-group col-6">
							<label for="j-city">City</label> <input type="text"
								class="form-control" id="j-city" name="j-city" />
						</div>
					</div>

					<div class="row">
						<div class="form-group col-6">
							<label for="j-s-date">Start Date:</label> <input type="month"
								class="form-control" id="j-s-date" min="2018-08" name="j-s-date" />
						</div>

						<div class="form-group col-6">
							<label for="j-e-date">End Date:</label> <input type="month"
								class="form-control" id="j-e-date" min="2018-08" name="j-e-date" />
						</div>

					</div>

					<!-- SKILLS -->

					<div class="">
						<h1>Skills</h1>
						<div class="form-group">
							<label for="skills">Skills:</label> <input type="text"
								class="form-control" id="skills" name="skills" />
						</div>

					</div>


					<!-- LANGUAGES -->


					<div class="">
						<h1>Languages</h1>
						<div class="form-group">
							<label for="language">Languages:</label> <input type="text"
								class="form-control" id="language" name="languages" />
						</div>

					</div>

					<!-- HOBBIES -->

					<div class="">
						<h1>Hobbies</h1>
						<div class="form-group">
							<label for="hobbies">Hobbies:</label> <input type="text"
								class="form-control" id="hobbies" name="hobbies" />
						</div>

					</div>
					<br>


					<!-- TEMPLATE SELECTION -->

					<div class="form-check">
						<input type="radio" class="form-check-input" id="template1"
							name="template" value="template1" checked> <label
							class="form-check-label" for="template1">Template 1</label>
					</div>
					<br>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="template2"
							name="template" value="template2"> <label
							class="form-check-label" for="template2">Template 2</label>
					</div>


					<br>

					<!-- SUBMIT BUTTON -->

					<input type="submit" class="btn btn-primary" name="submit">
					<br>
		</form>
	</div>


</body>

</html>