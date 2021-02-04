<?php
    require_once('layout/header.php');
?>
<!-- Melakukan koneksi ke dalam folder layout untuk mendapatkan header -->

<center><h3><b> <img src="img/rps.png" style="width:25px; height:25px;">Upload File</b></h3></center>

<div class="col-md-1">
    <br>
    <a href="daftarFile.php"><button type='button' class='btn btn-primary center-block' style="margin-bottom:20px; border: 1px solid #000000; border-radius: 4px; font-size:12px; background-color:#548FF6;"><img src="img/rps.png" style="width:18px; height:18px;">&nbsp; Daftar File </button></a>
</div>
  
<div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-10">

    <form action="tambah.php" method="post" name="form1">
        <table width="100%" border="0">
		    <tr> 
                <td><h4><b>Nama File   </b></h4></td>
                <td><input type="text" name="nama_file" placeholder="Pemograman Teknologi .NET" size="45" required></td>
            </tr>
            
            <tr> 
                <td><h4><b>Dosen Pengampu   </b></h4></td>
                <td><input type="text" name="dosen_pengampu" placeholder="Lit Malem Ginting M.T" size="45" required></td>
            </tr>

            <tr>
                <td><h4><b>Undang Dosen</b></h4></td>
                <td><select class="form-control" name="undang_dosen" aria-required="true" style="width:280px;">
                            <option value="#">-- Pilih dosen yang ingin di undang --</option>
                            <option value="fileRPS">Lit Malem Ginting M.T</option>
                            <option value="fileSoal">Dr. Arnaldo Marulitua Sinaga, <br>ST., M.InfoTech</option>
                            <option value="filePost">FI Gde Eka Dirgayussa, <br>S.Pd,M.Si</option>
                            
                    </select>
                </td>
            </tr>

            <tr>
                <td><h4><b>Jenis File </b></h4></td>
                <td><select class="form-control" name="file" aria-required="true" style="width:280px;">
                            <option value="#">-- Jenis File --</option>
                            <option value="fileRPS">File RPS</option>
                            <option value="fileSoal">File Soal</option>
                            <option value="filePost">File Post Evaluation</option>
                    </select> 
                </td>
            </tr>

            <tr> 
                <td><h4><b>Program Studi  </b></h4></td>
                <td><select class="form-control" name="prodi" aria-required="true" style="width:280px;"> 
                            <option value="#">-- Program Studi --</option>
                            <option value="D3TI">DIII Teknologi Informasi</option>
                            <option value="D3TK">DIII Teknik Komputer</option>
                            <option value="D4TRPL">DIV Teknologi Rekayasa Perangkat Lunak</option>
                            <option value="S1IF">S1 Informatika</option>
                            <option value="S1SI">S1 Sistem Informasi</option>
                            <option value="S1TE">S1 Teknik Elektro</option>          
                        </select>     
                </td>
            </tr>

            <tr> 
                <td><h4><b>Upload File   </b></h4></td>
                <td><form class="form-inline" method="POST" action="upload.php" enctype="multipart/form-data">
                <input class="form-control" type="file" name="upload" style="width:280px;"/>
                </form></td>
            </tr>

            <tr>
                <td><h4><b>Deskripsi </b></h4></td>
                <td><form action="#" method="post">
                        <textarea rows="5" cols="60" name="deskripsi"></textarea><br/> 
                </td>
            </tr>

            
            <br>
            <br>

            
                
        
            
        </table>
    </form>
    

<br>
</div>
</div>
</div>
</div>



<button type='button' class='btn btn-success center-block' style="margin-bottom:20px;">Upload</button>

<!-- Melakukan koneksi ke dalam folder layout untuk mendapatkan footer -->
<?php
    require_once('layout/footer.php');
?>

