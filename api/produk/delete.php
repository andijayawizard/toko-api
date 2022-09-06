<?php
header('Content-Type: application/json');

include dirname(dirname(__FILE__)) . '/db/Db.class.php';

$db = new Db();

$id = isset($_POST['IdProduk']) ? (int) $_POST['IdProduk'] : '';

if (empty($id)) {
  $arr = array();
  $arr['info'] = 'error';
  $arr['msg'] = 'ID Kategori tidak ditemukan';

  echo json_encode($arr);
  exit();
}

$db->query('DELETE from produk where IdProduk=' . $id);

$arr = array();
$arr['info'] = 'success';
$arr['msg'] = 'Data berhasil dihapus.';
echo json_encode($arr);
