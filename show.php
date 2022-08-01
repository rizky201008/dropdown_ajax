<?php  
include 'conf.php';
$query = mysqli_query($koneksi, "SELECT * FROM tbl_jakarta ORDER BY country_id");
$output = '<option value="">--Pilih Jakarta--</option>';
while($row = mysqli_fetch_array($query)){
	$output .= '<option value="'.$row["country_id"].'">'.$row["country_name"].'</option>';
}
echo $output;
?>