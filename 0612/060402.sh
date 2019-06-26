#!/bin/bash

usage()
{
    local script_name=$(basename "$0")
    cat << END
使い方: 060402.sh FILEPATH...
FILEPATHで指定したファイルの容量を表示
FILEPATH - 容量を求めるファイルのパスを指定、複数指定可
END
}

for file in "$@"
do
    if [ -f "$file" ]; then
        du "$file"
    else
        # エラーメッセージ
        echo "${file}: 通常のファイルではありません"
    fi
done

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi
