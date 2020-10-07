rm -rf shrug_test
mkdir shrug_test
cd shrug_test

../shrug-init

echo helloa >> a
echo hellob >> b
# c does not exist
../shrug-add a b c
echo helloc >> c
../shrug-add a b c
../shrug-status


