#!/usr/bin/env bash
echo "jupyter notebookにパスワードを設定します"
jupyter notebook --generate-config
echo "パスワードを2回入力してください"
python -c 'from notebook.auth import passwd;print(passwd())'
echo "↑をコピーして"
echo "~/.jupyter/jupyter_notebook_config.pyに"
echo "こんなかんじに貼り付けてください"
echo "c.NotebookApp.password = 'sha1:〜〜〜〜〜〜'"

echo "Homeフォルダの表示方法は"
echo "c9の歯車アイコンをクリックして"
echo "Show Hoem in Favorites"
echo "Show Hidden Files"
echo "にチェックを入れてください。"