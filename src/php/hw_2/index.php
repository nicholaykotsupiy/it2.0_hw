<?php

// 1
function pluck(array $assocArr, $key): array
{
  $resultArr = [];

  foreach ($assocArr as $arr) {
    array_push($resultArr, $arr[$key]);
  }

  return $resultArr;
}

// 2
$numbers = [26, 17, 136, 12, 79, 15];

foreach($numbers as $number){
  echo ($number ** 2) . "\n";
}

// 3
$numberArr = [];
$num = 1;

while(true){
  if(end($numberArr) !== 112){
    array_push($numberArr, $num);
    $num += 3;
  } else {
    break;
  }
}

// 4
function get_order (string $str): string
{
  $sortString = explode(' ', $str);

  sort($sortString);

  return implode(' ', $sortString);
}

// 5
function isCollision (array $arr = []): bool
{
  $newArr = array_unique($arr);

  if(strlen($arr) !== strlen($newArr)){
    return true;
  } else {
    return false;
  }
}

// 6
$numbersArr = [];

for ($i=5; $i <= 1000; $i++) { 
  $numbersArr[] = $i;
}

function square ($n)
{
  return $n ** 2;
}

$newNums = array_map('square', $numbersArr);

for ($i=0; $i < 5; $i++) { 
  echo array_rand($newNums, 1) . ' ';
}
