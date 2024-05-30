<?php 
    /**
     **** AppzStory Free Code ****
    * PHP MySQLi Object Oriented style CRUD
    * 
    * @link https://appzstory.dev
    * @author Yothin Sapsamran (Jame AppzStory Studio)
    */
    require_once('connect.php');
    if (isset($_POST['submit'])) {
        $sql = "UPDATE products SET 
                name = '".htmlspecialchars($_POST['name'], ENT_QUOTES, 'UTF-8')."',
                detail = '".htmlspecialchars($_POST['detail'], ENT_QUOTES, 'UTF-8')."', 
                price = '".$_POST['price']."', 
                amount = '".$_POST['amount']."', 
                updated_at = '".date("Y-m-d H:i:s")."'
                WHERE id = '".$conn->real_escape_string($_POST['id'])."' ";
        if ($conn->query($sql)) {
            echo '<script> alert("แก้ไขข้อมูลเสร็จเรียบร้อย")</script>';
            header('Refresh:0; url= ../');
        } else {
            echo '<script> alert("แก้ไขข้อมูลไม่สำเร็จ")</script>';
            header('Refresh:0; url= ../form-update.php');
        }
    }
    $conn->close();
?>