<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Membuat CRUD Pada Laravel - www.malasngoding.com</title>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
 
	<h2><a href="">Tambah Data Pegawai</a></h2>
	<h3>Data Pegawai</h3>
 
	<a href="/pegawai"> Kembali</a>
	
	<br/>
	<br/>
 
	<form action="/pegawai/store" method="post">
		{{ csrf_field() }}
		<div class="col-sm-10">
<div>
		Nama <input type="text" class="form-control" name="nama" required="required"> <br/>
		Jabatan <input type="text" class="form-control" name="jabatan" required="required"> <br/>
		Umur <input type="number" class="form-control" name="umur" required="required"> <br/>
		Alamat <textarea name="alamat" class="form-control" required="required"></textarea> <br/>
		Agama <select name ='agama' class="form-control">
				<option value="islam">Islam</option>
				<option value="hindu">Hindu</option>
				<option value="budha">Budha</option>
				<option value="katolik">Katolik</option>
				<option value="protestan"> Protestan</option>
				<option value="konghucu">Konghucu</option>
				</select>
		<button type="submit" class="btn btn-danger">Simpan Data</button>
		
		
	</form>
 
</body>
</html>










