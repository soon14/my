<?php

//测试
$appinfo = array(
    "status"=> 1,
    "code"  => "admin",
    "ver"   => "1.0.3",
    "upgrade" => base64_encode("http://192.168.1.101/cmfup/module/ai/pack/a.php")
);

echo $_GET['callback'] . '(' . json_encode($appinfo) . ')';