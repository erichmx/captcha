#!/bin/bash
a=200
echo $a

while [  $a -lt 400 ]; do
  echo $a
  qiv -W 400 dataset/$a.jpg &
  read text
  pkill qiv
  echo $text >> dataset/ans.txt
  let a=a+1
done
