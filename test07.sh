rm -rf shrug_test
mkdir shrug_test
cd shrug_test

# trying to run a shrug command without first running init
../shrug-status

../shrug-init

touch a b c d
echo helloa > a
echo hellob > b
echo helloc > c
echo hellod > d

../shrug-add a b c d
../shrug-commit -m "first commit"

echo line2 >> a

../shrug-rm a

../shrug-rm --force a

../shrug-status

# file deleted but we can access it's commit version
../shrug-show 0:a
