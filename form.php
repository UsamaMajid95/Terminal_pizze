<?php
require 'classes.php';

if(isset($_POST['pizze'])){
    $typeofpizze = $_POST['pizze'];
    $size =$_POST['size'] ;
    $coyc=$_POST['coyc'];

    $s = new sum();
    $result = $s->check($typeofpizze,$size,$coyc);
    echo $result;

}else{
    echo"error";
}


?>
