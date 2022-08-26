#!/usr/bin/env bash

#>If you want to bash to expand your argument, you can use Weak Quoting:

world="World"
echo "Hello $world"
#> Hello World

#>If you don't want to bash to expand your argument, you can use Strong Quoting:

world="World"
echo 'Hello $world'

#>You can also use escape to prevent expansion:

echo "Hello \$world"
#> Hello $world