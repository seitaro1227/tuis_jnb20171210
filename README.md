# Pandasワークショップ
## 環境
### python
- version: 3.6.2
- 必要なpackageはrequirements.txtを見てください。

#### python仮想環境を作る
`macOS` ではpyenvで `python3.6.2` の環境を作り
```
python -mvenv env
source env/bin/activate
pip install -r requirements.txt
```

とするとやりやすいかもしれません。

### python3.6.2の環境をpyenvで作ります。
1度のみ実行してください。
```
# ubuntu
# . setup_script/01_setup_python362_ubuntu.sh
# amazonlinux
. setup_script/01_setup_python362_amazonlinux.sh
# 必要に応じて JupiterNotebookにパスワードをつけてください。
. setup_script/02_setup_jnb.sh
```

### JupiterNotebookを8080ポートで起動します。
JupiterNotebookが起動していないときは実行してください。
```
. ./00_start_jnb.sh
```
