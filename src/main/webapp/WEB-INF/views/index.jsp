<!DOCTYPE web-app PUBLIC "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN" "http://java.sun.com/dtd/web-app_2_3.dtd" >
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous" />
<style>
.conrainer {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.conrainer1 {
	text-align: center;
	justify-content: center;
	margin-top: 10px;
	font-size: 32px;
	background-color: orange;
	width: 200px;
	border-radius: 10px;
}

a {
	color: aliceblue;
	text-decoration: none;
}

.pl-5 {
	padding-left: 5px;
}

.logokiri {
	max-width: 50px;
}
</style>
</head>
<body>
	<div class="container-fluid p-5 bg-dark text-white text-center d-flex justify-content-around">
		<div class="logokiri">
		<img src="https://prosigmaka.com/wp-content/uploads/2022/03/prosigmaka-Logo.png" width="180px" height="70px">
		</div>
			<div><p style="font-size: 50;">Welcome to Spring MVC Tutorial</p></div>
			<div>
				
			</div>
		</div>
	<div class="conrainer">
		<div class="mb-3 mt-3 text-center">
			<p>Klik Mahasiswa untuk memasukkan data</p>
		</div>
		<div class="conrainer1">
			<a href="mhs">Mahasiswa</a>
		</div>
</body>
</html>
