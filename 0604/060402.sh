for file in "$@"
do
    if [ -f "$1" ]; then
        du "$file"
    else
        # エラーメッセージ
        echo "${file}: 通常のファイルではありません"
    fi
done
