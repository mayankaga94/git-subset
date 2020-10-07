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
../shrug-commit -m "first commit"

../shrug-add c d
echo line2 >> a
echo line2 b >> b

../shrug-rm --cached a d

../shrug-status

../shrug-commit -m "del a and mod b"

../shrug-status

../shrug-log
../shrug-show 0:a
../shrug-show 1:a

