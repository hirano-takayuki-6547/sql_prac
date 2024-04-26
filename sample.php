<?php

$numbers = ['','', '', '', '', '', '', '', '', ''];

// for($i = 1; $i <= 10; $i++) {
//     for($j = 1; $j <= 10; $j++) {
//         echo $j . " ";
//     }
//     echo "<br>";
// }

for ($i = 0; $i <= 9; $i++) {
    for ($j = 0; $j <= 9; $j++) {
        $numbers[$i] .= " " . $j + 1;
    }
    echo $numbers[$i] . "<br>";
    // $numbers[$i] .= "<br>";
}

// foreach($numbers as $number) {
//     echo $number;
// }


