<?php
    require_once('layout/header.php');
?>
<!-- Melakukan koneksi ke dalam folder layout untuk mendapatkan header -->



<div class="col-md-12">
    <center><h3><b> <img src="img/rps.png" style="width:25px; height:25px;">History Forum</b></h3></center>
    &nbsp;
</div>
        <div class="col-md-2 col-md-offset-10">
          <input class="form-control" type="search" placeholder="Cari Dokumen...">
          <br>
        </div>

<table class="table table-hover text-center">
    <thead>
    <th class="text-center">Nama File</th>
        <th class="text-center">Dosen Pengampu</th>
        <th class="text-center">Jenis File
        <th class="text-center">Program Studi</th>
		<th class="text-center">File</th>
        <th class="text-center">Deskripsi</th>
        <th class="text-center">Berita Acara</th>
        <th class="text-center">Daftar Hadir</th>
        <th class="text-center">Status</th>
        <th class="text-center">Cetak</th>
</thead>

<tbody class="table-hover">
    <tr>
    <td class="text-center">Pemograman Teknologi .NET</td>
        <td class="text-center">Lit Malem Ginting M.T</td>
        <td class="text-center">File RPS</td>
        <td class="text-center">S1 Informatika</td>
        <td class="text-center"><a href="#">Pemograman Teknologi .NET.docx</td>
        <td class="text-center">Ini adalah file RPS</td>
        <td class="text-center"><a href="#">Acara 1</td>
        <td class="text-center"><a href="#">Daftar Hadir 1</td>
        <td class="text-center" style="color:	#7FFF00;">Diterima</td>
        <td class="text-center"><a href="#">Cetak</td>


    </tr>

    <tr>
    <td class="text-center">Pengujian Perangkat Lunak</td>
        <td class="text-center">Dr. Arnaldo Marulitua Sinaga, <br>ST., M.InfoTech.</td>
        <td class="text-center">File RPS</td>
        <td class="text-center">D3 Teknologi Informasi</td>
        <td class="text-center"><a href="#">Pengujian Perangkat Lunak.docx</td>
        <td class="text-center">Ini adalah file Soal</td>
        <td class="text-center"><a href="#">Acara 2</td>
        <td class="text-center"><a href="#">Daftar Hadir 2</td>
        <td class="text-center" style="color:	#7FFF00;">Diterima</td>
        <td class="text-center"><a href="#">Cetak</td>
    </tr>

    <tr>
    <td class="text-center">Praktikum Rangkaian Elektrik</td>
        <td class="text-center">I Gde Eka Dirgayussa, <br>S.Pd,M.Si</td>
        <td class="text-center">File Post Evaluation</td>
        <td class="text-center">S1 Teknik Elektro</td>
        <td class="text-center"><a href="#">Praktikum Rangkaian Elektrik.docx</td>
        <td class="text-center">Ini adalah file post evaluation</td>
        <td class="text-center"><a href="#">Acara 3</td>
        <td class="text-center"><a href="#">Daftar Hadir 3</td>
        <td class="text-center" style="color:#FF0000;">Ditolak</td>
        <td class="text-center"><a href="#">Cetak</td>
    </tr>

    
</tbody>
</table>

<!-- Melakukan koneksi ke dalam folder layout untuk mendapatkan footer -->
<?php
    require_once('layout/footer.php');
?>


        
