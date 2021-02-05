<?php
//  1
function createAbbr(string $name): string
{
  $abbr = '';
  $currentName = $name . ' ';

  for ($i = 0; $i < strlen($name); $i++) {

    $strPos = mb_stripos($currentName, ' ');
    $positionSpace = mb_substr($currentName, $strPos, 1);

    if ($positionSpace === ' ') {
      $abbr .= mb_substr($currentName, 0, 1);
      $subString = mb_substr($currentName, 0, ++$strPos);
      $currentName = str_replace($subString, '', $currentName);
    }
  }

  $abbr = mb_strtoupper($abbr);

  return $abbr;
}

// 2
function truncate_string(string $str = '', int $maxsymbol = 5): string
{
  if (strlen($str) > $maxsymbol) {
    return mb_substr($str, 0, $maxsymbol - 3) . '...';
  } else {
    return $str;
  }
}
// 3
function getCountSymbol(string $str, string $char): int
{
  $countChars = 0;
  for ($i = 0; $i < strlen($str); $i++) {
    if ($str[$i] === $char) {
      $countChars++;
    }
  }

  return $countChars;
}
// 4
function strFormated(string $str): string
{
  return rtrim(strip_tags(htmlspecialchars_decode($str)));
}
// 5
function shortFIOFormated(string $fullName = 'Иванов Иван Иванович'): string
{
  $explodeFullName = explode(' ', $fullName);
  $result = $explodeFullName[0] . ' ';

  for ($i = 0; $i < count($explodeFullName); $i++) {
    if ($i > 0) {
      $result .= mb_strtoupper(mb_substr($explodeFullName[$i], 0, 1)) . '.';
    }
  }

  return $result;
}
// 6 
function getExtension(string $pathFille): string
{
  $position = strripos($pathFille, '.');

  return mb_substr($pathFille, ++$position);
}
