<?php
abstract class pizzes{
    public $host = 'localhost';
    public $username = 'root';
    public $password = '';
    public $db = 'terminal_pizze';
    public $conn;
    
    public function __construct(){
        
        $this->conn = mysqli_connect($this->host,$this->username,$this->password,$this->db);

    }
    
    abstract function check($typeofpizze,$size,$coyc);

}

class sum extends pizzes{
    
    public function check($typeofpizze,$size,$coyc){
        $price=[
            '21cm' => 5,
            '26cm' => 8,
            '31cm'=> 10,
            '45cm'=> 15
        ];
        #----prices of pizze-----

        $sauces = [
            'сырный'=> 1,
            'кисло-сладкий' =>1,
            'чесночный' => 1,
            'барбекю' => 2
        ];
        #----prices of sauces-----

        $total_price = $price[$size] + $sauces[$coyc];    
        #-----calculate the total_price----
        
        $data = mysqli_query($this->conn,"INSERT INTO `pizze` VALUES ('','$typeofpizze','$size','$coyc','$price[$size]','$sauces[$coyc]','$total_price')");
        #-----insert data into database----
        
        return "<pre><b> 
        Ваш заказ : $typeofpizze
        Размер: $size
        Соус : $coyc
        -------------------------
        Итого к оплате = $total_price USD 
        Спасибо за покупку!
        </b></pre>" ;

    }

}
?>