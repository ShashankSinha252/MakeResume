dirs=$(ls -d */)

param=$(sed 's_/__g' <<< $dirs)
param=$(sed "s/barebones//" <<< $param)

sed -i "1 s/=.*/= $param/" Makefile
