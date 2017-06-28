echo off
set title=%1
echo %title%
echo "creating content file..."
hugo new %title%.md
echo "marking content as draft=false..."
hugo undraft content/%title%.md
echo "opening content file in sublime..."
subl content/%title%.md
echo "done..."

