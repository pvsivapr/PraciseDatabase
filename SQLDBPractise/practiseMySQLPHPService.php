<?php
$servername = "den1.mysql6.gear.host";
$username = "practisemysqldb";
$password = "my\$ql123";
$dbName = "practisemysqldb";
$host = 3306;
try
{
    header("Content-Type: application/json; charset=UTF-8");
    $obj = json_decode($_POST["x"], false);
    //$sql = "INSERT INTO mmplayerdb.mmplayermovies (id, movieId, movieName, noOfSongs, movieLogoURL) VALUES ('$obj->id', '$obj->movie_id', '$obj->movie_name', '$obj->no_of_songs', '$obj->movie_logo_url')";
    $sql = $obj->query;
    $conn = new PDO("mysql:host=$servername;dbname=$dbName", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $conn->exec($sql);
    $result = array("message"=>$obj,"code"=>"1","Result"=>"worked successful");
    // $result = array("message"=>"User Registration is successful","code"=>"1","Result"=>"worked successful");
    echo json_encode($result);
}
catch(PDOException $e)
{
  echo 'Exception -> ';
    var_dump($e->getMessage());
}
?>