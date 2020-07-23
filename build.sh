#! /bin/bash
echo "Running Custom Build Script"
hexo generate
cp -r public/* /var/www/html/
echo "Copied Generated Content To:"
echo "/var/www/html/"