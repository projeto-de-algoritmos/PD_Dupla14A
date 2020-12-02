# Base image
FROM ubuntu

# Setting work directiory
WORKDIR /app

# Install OS dependencies
RUN apt-get update && apt-get install -y \
    python3.6 \
    python3-pip \
    gcc

# Coping project
COPY . /app

RUN pip3 install -r requirements.txt

CMD voila --no-browser --port=8888 App.ipynb