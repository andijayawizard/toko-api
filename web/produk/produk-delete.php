<?php
include '../inc.php';

$IdProduk = isset($_GET['IdProduk']) ? (int) $_GET['IdProduk'] : 0;

if (empty($IdProduk)) {
  header('location: produk.php');
  exit();
}

//proses delete ke API
$url = $api_url . '/produk/delete.php';
$postdata = array();
$postdata['IdProduk'] = $IdProduk;

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36");
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($postdata, '', '&'));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($ch, CURLOPT_TIMEOUT, 30);
$response = curl_exec($ch);
$http_status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
$curl_error = curl_error($ch);
curl_close($ch);

$arr_response = json_decode($response, true);
$info = isset($arr_response['info']) ? $arr_response['info'] : 'error';
$msg = isset($arr_response['msg']) ? $arr_response['msg'] : 'tidak diketahui';

header('location: produk.php?info=' . $info . '&msg=' . $msg);
