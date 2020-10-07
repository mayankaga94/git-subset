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

../shrug-rm d

../shrug-add d

../shrug-rm d

#mod a and commit with -a as it has being tracked by index
echo changed a >> a
../shrug-commit -a -m "mod a"

echo change again >> a

# a in first commit
../shrug-show 0:a
# a in second commit 
../shrug-show 1:a
# a now in index
../shrug-show :a

../shrug-status
