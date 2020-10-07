rm -rf shrug_test
mkdir shrug_test
cd shrug_test
../shrug-init

touch a b c d
echo helloa > a
echo hellob > b
echo helloc > c
echo hellod > d

../shrug-add c d
../shrug-commit -m "first commit"

rm d

../shrug-status

../shrug-commit -m "trying to commit"

../shrug-add d

../shrug-commit -m "deleted d"

../shrug-status

