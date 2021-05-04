<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Membuat CRUD Pada Laravel - www.malasngoding.com</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
 
	<h2><a href="">Edit Data Pegawai</a></h2>
	
	<h3>Edit Pegawai</h3>
 
	<a href="/pegawai"> Kembali</a>
	
	<br/>
	<br/>
 
	@foreach($pegawai as $p)
	<form action="/pegawai/update" method="post">
		{{ csrf_field() }}
<div class="col-sm-10">
<div>
		<input type="hidden" name="id" value="{{ $p->pegawai_id }}"><class="form-control"> <br/>
		Nama <input type="text" class="form-control" id="nama" required="required" name="nama" value="{{ $p->pegawai_nama }}"> <br/>
		Jabatan <input type="text" class="form-control" id="jabatan" required="required" name="jabatan" value="{{ $p->pegawai_jabatan }}"> <br/>
		Umur <input type="number" class="form-control" id="umur" required="required" name="umur" value="{{ $p->pegawai_umur }}"> <br/>
		Alamat <textarea class="form-control" id="alamat" required="required" name="alamat">{{ $p->pegawai_alamat }}</textarea> <br/>
		<button type="submit" class="btn btn-danger">Simpan Data</button>
	</form>
	@endforeach
		
		
</body>
</html>