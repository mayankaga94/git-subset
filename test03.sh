rm -rf shrug_test
mkdir shrug_test
cd shrug_test
../shrug-init

touch a b c d
echo helloa > a
echo hellob > b
echo helloc > c
echo hellod > d

../shrug-commit -a -m "trying to commit"

../shrug-add a b c

../shrug-commit -m "first commit"

echo another line >> a
echo enother line >> b
../shrug-add d
echo changing d >> d
../shrug-status
