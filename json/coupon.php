<?php 
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "ecommerce";

$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

if(isset($_POST['action']) && $_POST['action'] == 'load_discount'){
    $coupon_code = mysqli_real_escape_string($connection, $_POST['cupon']);
    $price = floatval($_POST['price']); // Convert price to float for calculations
    
    $query = "SELECT * FROM `cupon` WHERE `cupon_code`='$coupon_code' AND `status`=1";

    $result = mysqli_query($connection, $query);
    
    if($result && mysqli_num_rows($result) > 0) {
        $discount = 0;
        while($res = mysqli_fetch_assoc($result)) {
            $discount = $res['discount'];
        }
        
        $discount_amount = ($price * $discount / 100);
        echo $discount_amount;
    } else {
        echo 0;
    }
}
?>
