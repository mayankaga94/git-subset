rm -rf shrug_test
mkdir shrug_test
cd shrug_test
../shrug-init

touch a b c d
echo helloa > a
echo hellob > b
echo helloc > c
echo hellod > d
../shrug-add a b
../shrug-commit -m "add a and b"
../shrug-status

echo another line >> a
../shrug-add c
../shrug-status

