#!/bin/bash

var1=2
var2=2
test() {
local var1=3
var2=4
echo "$var1, $var2"
}

echo "$var1,$var2"
test
echo "$var1,$var2"
