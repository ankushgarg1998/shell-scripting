touch -t 202003261422 refref
find /Users/ankush.g/Desktop/test/ -type f -name '*.txt' -newer /Users/ankush.g/Desktop/test/ref3 -exec rm {} \;
rm refref