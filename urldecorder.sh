#
echo 'Paste the URL link from any browser address'

read url
echo "$url" | sed -e "s/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g" | xargs -0 echo -e
