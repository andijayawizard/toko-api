<?php
include '../inc.php';

$id = isset($_GET['id']) ? (int) $_GET['id'] : 0;

if (empty($id)) {
  header('location:produk.php');
  exit();
}

$nama_pro = isset($_POST['nama_pro']) ? $_POST['nama_pro'] : '';

if (!empty($nama_pro)) {
  //proses submit ke API

  $id = isset($_POST['id']) ? (int) $_POST['id'] : '';
  $idkat = isset($_POST['idkat']) ? (int) $_POST['idkat'] : '';
  $ket = isset($_POST['ket']) ? $_POST['ket'] : '';
  $acak1 = isset($_POST['acak1']) ? $_POST['acak1'] : '';

  $url = $api_url . '/produk/update.php';
  $postdata = array();
  $postdata['id'] = $id;
  $postdata['idkat'] = $idkat;
  $postdata['nama_pro'] = $nama_pro;
  $postdata['ket'] = $ket;
  $postdata['acak1'] = $acak1;

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

  header('location:produk-edit.php?id=' . $id . '&info=' . $info . '&msg=' . $msg);
  exit();
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8">
  <title>Edit Produk</title>
</head>

<body>
  <h1>Edit Produk</h1>

  <?php
  $info = isset($_GET['info']) ? $_GET['info'] : '';
  $msg = isset($_GET['msg']) ? $_GET['msg'] : '';

  if (!empty($info)) {
    echo 'Info: ' . $info;
    echo '<br />Msg: ' . $msg;
    echo '<br />';
  }


  $api_categories_detail = $api_url . '/produk/detail.php?id=' . $id;
  $json_detail = @file_get_contents($api_categories_detail);


  $arr_detail = json_decode($json_detail, true);
  $result = isset($arr_detail['result']) ? $arr_detail['result'] : array();
  ?>

  <p><a href="produk.php">&laquo; Back</a> | <a href="produk-edit.php?id=<?php echo $result['id']; ?>">Reload</a></p>

  <form method="POST" action="">
    <input type="hidden" name="id" value="<?php echo $result['id']; ?>" />
    <table border="1">
      <tr>
        <td>Kategori</td>
        <td>:</td>
        <td><input type="text" name="idkat" size="50" value="<?php echo $result['idkat']; ?>"></td>
      </tr>
      <tr>
        <td>Nama Produk</td>
        <td>:</td>
        <td><input type="text" name="nama_pro" size="50" value="<?php echo $result['nama_pro']; ?>"></td>
      </tr>
      <tr>
        <td>Keterangan Produk</td>
        <td>:</td>
        <td><input type="text" name="ket" size="50" value="<?php echo $result['ket']; ?>"></td>
      </tr>
      <tr>
        <td>Gambar</td>
        <td>:</td>
        <td><input type="text" name="acak1" size="50" value="<?php echo $result['acak1']; ?>"></td>
      </tr>
    </table>

    <p>
      <input type="submit" name="sbm" value="Submit" />
    </p>
  </form>

</body>

</html>