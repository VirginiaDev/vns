<?php
$conn=  mysqli_connect('localhost', 'root', '', 'virtuoso_site');
$blog_id = $_REQUEST['decryption'];
$sql = "SELECT * FROM blog_post_comment WHERE blog_id = '$blog_id' AND status = '1' ORDER BY parent_comment_id asc, id asc";

$result = mysqli_query($conn, $sql);
$record_set = array();
while ($row = mysqli_fetch_assoc($result)) {
    array_push($record_set, $row);
}
mysqli_free_result($result);

mysqli_close($conn);
echo json_encode($record_set);
?>