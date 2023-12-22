FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3.9 python3.9-dev
# .devcontainer/requiremetns.txt
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD [ "python" ]