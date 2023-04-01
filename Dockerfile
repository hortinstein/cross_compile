FROM denoland/deno:ubuntu-1.31.1

RUN apt update
RUN apt install git curl build-essential -y

RUN curl https://nim-lang.org/choosenim/init.sh -sSf | bash -s -- -y
ENV PATH=/root/.nimble/bin:$PATH

RUN nimble install nimterop -y
