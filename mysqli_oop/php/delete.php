<?php 
    /**
     **** AppzStory Free Code ****
    * PHP MySQLi Object Oriented style CRUD
    * 
    * @link https://appzstory.dev
    * @author Yothin Sapsamran (Jame AppzStory Studio)
    */
    require_once('connect.php');
    if (isset($_GET['id'])) {
        $sql = "DELETE FROM products WHERE id = '". $conn->real_escape_string($_GET['id'])."' ";
        if ($conn->query($sql)) {
            echo '<script> alert("ลบข้อมูลเสร็จเรียบร้อย")</script>';
            header('Refresh:0; url= ../');
        } else {
            echo '<script> alert("ลบข้อมูลไม่สำเร็จ")</script>';
            header('Refresh:0; url= ../');
        }
    }
    $conn->close();
?>