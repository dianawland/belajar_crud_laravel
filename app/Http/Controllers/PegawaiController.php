<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

use Session;


class PegawaiController extends Controller
{
    //

    	public function index()
    {
    	// mengambil data dari table pegawai
    	$pegawai = DB::table('pegawai')->get();
        
        // mengambil data dari table pegawai
		$pegawai = DB::table('pegawai')->paginate(10);
 
    	// mengirim data pegawai ke view index
    	return view('index',['pegawai' => $pegawai]);

    }

    public function formulir(){
 
    	return view('formulir');
 
}
public function proses(Request $request){
    $nama = $request->input('nama');
     $alamat = $request->input('alamat');
    return "Nama : ".$nama.", Alamat : ".$alamat;
}

public function tambah()
{
 
	// memanggil view tambah
	return view('tambah');
	


 
}

// method untuk insert data ke table pegawai
public function store(Request $request)
{
	// dd($request);exit;
	// insert data ke table pegawai
	DB::table('pegawai')->insert([
		'pegawai_nama' => $request->nama,
		'pegawai_jabatan' => $request->jabatan,
		'pegawai_umur' => $request->umur,
		'pegawai_alamat' => $request->alamat,
		'agama'=> $request->agama
	]);

	Session::flash('flash_message','successfully saved.');
	
	// alihkan halaman ke halaman pegawai
	return redirect('/pegawai')->with('status','Data Kontak Berhasil Ditambahkan');

	
 
}

// method untuk edit data pegawai
public function edit($id)
{
	// mengambil data pegawai berdasarkan id yang dipilih
	$pegawai = DB::table('pegawai')->where('pegawai_id',$id)->get();
	// passing data pegawai yang didapat ke view edit.blade.php
	return view('edit',['pegawai' => $pegawai]);
 
}

// update data pegawai
public function update(Request $request)
{
	// update data pegawai
	DB::table('pegawai')->where('pegawai_id',$request->id)->update([
		'pegawai_nama' => $request->nama,
		'pegawai_jabatan' => $request->jabatan,
		'pegawai_umur' => $request->umur,
		'pegawai_alamat' => $request->alamat
	]);
	// alihkan halaman ke halaman pegawai
	return redirect('/pegawai');
}

// method untuk hapus data pegawai
public function hapus($id)
{
	// menghapus data pegawai berdasarkan id yang dipilih
	DB::table('pegawai')->where('pegawai_id',$id)->delete();

	Session::flash('flash_message','successfully delete.');
		
	// alihkan halaman ke halaman pegawai
	return redirect('/pegawai');
}

public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;
 
    		// mengambil data dari table pegawai sesuai pencarian data
		$pegawai = DB::table('pegawai')
		->where('pegawai_nama','like',"%".$cari."%")
		->paginate();
 
    		// mengirim data pegawai ke view index
		return view('index',['pegawai' => $pegawai]);
 
	}


}
