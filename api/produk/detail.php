<?php
header('Content-Type: application/json');

include dirname(dirname(__FILE__)) . '/db/Db.class.php';

$db = new Db();

$id = isset($_GET['IdProduk']) ? (int) $_GET['IdProduk'] : 0;

$cat_detail = $db->row('SELECT * from produk where IdProduk=' . $id);

$arr = array();
$arr['info'] = 'success';
$arr['result'] = $cat_detail;
echo json_encode($arr);
