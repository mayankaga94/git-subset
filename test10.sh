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

../shrug-rm b

../shrug-status

../shrug-commit -m "delete b"

../shrug-status

echo another line >> a
../shrug-add a

rm a

../shrug-status

echo change >> c
echo change >> d
echo "change a ?" >> a
../shrug-add a

../shrug-commit -m "another commit"

../shrug-status
../shrug-log

../shrug-show 0:a
../shrug-show 1:a
../shrug-show 2:a

