FROM nvidia/cuda:11.6.2-cudnn8-runtime-ubuntu20.04

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

CMD ["python3", "lunar_lander.ipynb"]
