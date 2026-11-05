#!/bin/bash
ng(){
     echo ${1}行目のテスト失敗
     res=1
}
res=0
out=$(seq 5 | ./plus_stdin)
[ "${out}" = 15 ] || ng "$LINENO"
[ "${res}" = 15 ] && echo OK
exit $res
