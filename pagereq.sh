declare -A cnt
while read addr d1 d2 datim gmtoff getr page therest
do
    if [[ $1 == $addr ]] ; then let cnt[$page]+=1 ; fi
done
for id in ${!cnt[@]} $id
do
    printf "%8d %s\n" ${cnt[$id]} $id
done
