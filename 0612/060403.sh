#!/bin/bash

usage()
{
    local script_name=$(basename "$0")
    cat << END
使い方: 060403.sh DIRPATH
DIRPATHで指定したディレクトリ下の実行可能ファイルの一覧表示
DIRPATH - 実行可能ファイルの一覧表示を行うディレクトリパスを指定
END
}
if [ -d "$1" ]; then
    # ディレクトリ内のファイルが実行可能ファイルかチェックして
    # 実行可能ファイルであれば表示
    #for file in $(ls "$1")
    for file in $(find "$1" -maxdepth 1 -type f)
    do
        # fileが実行可能ファイルであれば表示
        #if [ -x "${1}/${file}" ] && [ ! -d "${1}/${file}" ]; then
        if [ -x "$file" ]; then
            #echo "$file"
            #echo 'basename "$file"'
            echo $(basename "$file")
        fi
    done
else
    # エラーメッセージ
    echo "${1}: ディレクトリではありません"
fi

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi
