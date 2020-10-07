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

../shrug-rm --cached c
../shrug-status

../shrug-add c
../shrug-rm c
../shrug-status

