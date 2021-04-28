<!DOCTYPE html>
<html>
<head>
	<title>Test</title>
</head>
<body>
 
	<h3>Biodata</h3>
	<p>Nama : {{ $nama }}</p>
	<p>lagu solo  </p>
	<ul>
			@foreach($song as $s)

			<li>{{ $s }}</li>

			@endforeach
	</ul>
 
 
</body>
</html>