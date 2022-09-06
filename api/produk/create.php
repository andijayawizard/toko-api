<?php
header('Content-Type: application/json');

include dirname(dirname(__FILE__)) . '/db/Db.class.php';

$db = new Db();

$KodeProduk = isset($_POST['KodeProduk']) ? $_POST['KodeProduk'] : '';
$NamaProduk = isset($_POST['NamaProduk']) ? $_POST['NamaProduk'] : '';
$HargaJual = isset($_POST['HargaJual']) ? $_POST['HargaJual'] : '';
$Stok = isset($_POST['Stok']) ? $_POST['Stok'] : '';

if (empty($NamaProduk)) {
  $arr = array();
  $arr['info'] = 'error';
  $arr['msg'] = 'produk tidak ada';

  echo json_encode($arr);
  exit();
}

$datas = array();
$datas['KodeProduk'] = $KodeProduk;
$datas['NamaProduk'] = $NamaProduk;
$datas['HargaJual'] = $HargaJual;
$datas['Stok'] = $Stok;

$exec = $db->insert('produk', $datas);

if (!$exec) {
  $arr = array();
  $arr['info'] = 'error';
  $arr['msg'] = 'Query tidak berhasil dijalankan.';

  echo json_encode($arr);
  exit();
}

$arr = array();
$arr['info'] = 'success';
$arr['msg'] = 'Data berhasil diproses.';
echo json_encode($arr);
