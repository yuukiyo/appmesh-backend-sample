FROM python:3.7.4-alpine

# ソースを置くディレクトリを変数として格納                                                  
ARG project_dir=/web/hello/

# 必要なファイルをローカルからコンテナにコピー
ADD hello.py $project_dir

# requirements.txtに記載されたパッケージをインストール                         
WORKDIR $project_dir
RUN pip install Flask

# （コンテナ内で作業する場合）必要なパッケージをインストール
RUN apk update                  
RUN apk add zsh vim tmux git tig

#CMD ["python, /web/hello/hello.py"]
CMD ["python", "/web/hello/hello.py"]
#RUN ["find", "/web/"]

