#! /bin/sh

acceptable=\\base\\jdsports\\domain\\OrderStatusChangeNotificationDespatcher
notacceptable=q6MVN9m0OS/NWUCWb5d=pnCjTE9HtiJT43SPk1Zy
other="some other text"

testfiles=($acceptable $notacceptable $other)
regex="[^0-9A-Za-z/+=]*/"

for file in "${testfiles[@]}"
do
    echo "$file" | awk -v test="$regex" '$1 ~ test'
done

