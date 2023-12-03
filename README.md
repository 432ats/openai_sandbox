# openai_sandbox
👋 🐍 🤝 🐳

## Pu
- anacondaとの決別
- openai-apiをぶん回す砂場
- containerでjupyterを起動

## En
プロジェクト内に.envを作成
```
touch .env
```
.env内にopenaiのapiキーを記載
```
OPENAI_API_KEY=<my-openai-api-key>
```

## Te
```
make jupyter
```
でコンテナ内のjupyter-labを開始