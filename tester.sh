for test in `ls $2| grep test | grep in | cut -d'.' -f1`;
do
    echo Test: $test
    $1 < $2/${test}.in| diff - $2/${test}.out
done
echo "Testing finished, press return to exit"
read
