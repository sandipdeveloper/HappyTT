<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create User</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link
	href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<h1>
			<a href="#">Create New Account</a>
		</h1>
		<div class="row">
			<div class="span4">
				<ul class="nav nav-list">
					<li class="nav-header">Other Links</li>
					<li>Add Links Here</li>
				</ul>
			</div>
			<div class="span8">
				<form method="post" action="captchaserver.jsp">
					<table width="70%">
						<tr>
							<td>User id</td>
							<td>1234567l</td>
							<td></td>
						</tr>
						<tr>

							<td>Name :</td>
							<td><input type="text" name="name"></td>
							<td></td>
						</tr>
						<tr>
							<td>Email id :</td>
							<td><input type="text" name="email"></td>
							<td></td>
						</tr>
						<tr>

							<td>Date of birth :</td>
							<td><input type="text" name="dob" placeholder="MM/DD/YYYY"></td>
							<td></td>
						</tr>
						<tr>
							<td>Contact number</td>
							<td><input type="text" name="contact"
								placeholder="XXX-XXX-XXXX"></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td><script type="text/javascript"
									src="https://www.google.com/recaptcha/api/challenge?k=6Lf_WukSAAAAAJWhqZUyGbV1093UQSQ3tjN2lkMj">
								
							</script>
								<noscript>
									<iframe
										src="https://www.google.com/recaptcha/api/noscript?k=6Lf_WukSAAAAAJWhqZUyGbV1093UQSQ3tjN2lkMj"
										height="300" width="500" frameborder="0"></iframe>
									<br>
									<textarea name="recaptcha_challenge_field" rows="3" cols="40">
   </textarea>
									<input type="hidden" name="recaptcha_response_field"
										value="manual_challenge">
								</noscript></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td><input class="btn btn-success" type="submit"
								value="Create user"></td>
							<td></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

</body>
</html>