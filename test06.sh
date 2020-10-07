rm -rf shrug_test
mkdir shrug_test
cd shrug_test
../shrug-init

touch a b c d
echo helloa > a
echo hellob > b
echo helloc > c
echo hellod > d

../shrug-add a b c d
../shrug-commit -m "first commit"

echo another line >> a
echo line2 b >> b
echo hello world >> c

../shrug-add a b

rm d

../shrug-status

../shrug-rm c

echo not again >> a

touch f
echo new file >> f
../shrug-add f

../shrug-status
