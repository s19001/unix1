#!/bin/bash

usage()
{
    local script_name=$(basename "$0")
    cat << END
使い方: 062703.sh DIRPATH
DIRPATHで指定したディレクトリ下のファイル数/ディレクトリ数を表示
DIRPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定
END
}

for file in "$@"
do
    if [ -d "$file" ]; then  
        echo 'file =>' $(find "$file" -type f | wc -l)
        echo 'directory =>' $(find "$file" -type d | wc -l)
    else
        echo "${file}:ディレクトリではありません"
    fi
done

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi
