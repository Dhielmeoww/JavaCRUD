<!DOCTYPE web-app PUBLIC "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN" "http://java.sun.com/dtd/web-app_2_3.dtd">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
request.setAttribute("contextName", request.getContextPath());
%>
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

.pl-5 {
	padding-left: 5px;
}

.wrapper {
	width: 50%;
	justify-content: center;
	align-items: center;
	padding: 2px;
}

.wrapper1 {
	width: 50%;
	justify-content: center;
	text-align: center;
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
		<div class="col-sm-4 p-2">
		<div class="mb-3 mt-3 text-center text-warning">
				<p><b>Masukkan Data</b></p>
			</div>
			<form action="${contextName}/mhs" method="post">
				<input type="hidden" name="mode" value="tambah" />
				<div class="mb-3 mt-3">
					ID <input class="form-control" type="text" name="id" value="" />
				</div>
				<div class="mb-3 mt-3">
					NIM <input class="form-control" type="text" name="nim" value="" />
				</div>
				<div class="mb-3 mt-3">
					Nama <input class="form-control" type="text" name="nama" value="" />
				</div>
				<div class="mb-3 mt-3">
					Alamat <input class="form-control" type="text" name="alamat"
						value="" />
				</div>
				<div class="mb-3 mt-3 text-center">
					<button type="submit" class="btn btn-warning">Simpan</button>
				</div>
			</form>
		</div>
		<div class="col-sm-4 p-2 bg-dark rounded">
			<div class="mb-3 mt-3 text-center text-white">
				<p>DATA MAHASISWA</p>
			</div>
			<div class="mb-3 mt-7 text-center bg-light rounded">
				<ol>
					<c:forEach var="mhs" items="${mhslist}">
						<li>${mhs.nim}-${mhs.nama}-<a
							href="${contextName}/mhs/edit?id=${mhs.id}">Edit</a>
						</li>
					</c:forEach>
				</ol>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>
