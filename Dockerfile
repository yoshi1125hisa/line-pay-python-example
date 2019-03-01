FROM python:3.6-alpine

ENV project_dir /app
WORKDIR $project_dir
COPY . $project_dir

RUN set -x && \ 
    apk add --update --no-cache git && \
    pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3", "main.py", "open", "http://localhost:5000/"]
