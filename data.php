<?php  
include 'conf.php';
$kotaId = $_POST["kotaId"];
if($kotaId !== ""){
	$query = mysqli_query($koneksi, "SELECT * FROM tbl_lokasi_jakarta WHERE country_id = '$kotaId' ");
	$output = '<option value="">--Pilih Daerah--</option>';
	while($row = mysqli_fetch_array($query)){
		$output .= '<option>'.$row["state_name"].'</option>';
	}
}else{
	$output = '<option value="">--Tolong pilih data--</option>';
}
echo  $output;
