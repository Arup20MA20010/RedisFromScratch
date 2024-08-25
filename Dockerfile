FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
  build-essential \
  g++ \
  make \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY . .

WORKDIR /usr/src/app/src

RUN ls

RUN make

CMD ["./server"]
