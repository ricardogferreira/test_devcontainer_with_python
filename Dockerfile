FROM python:3.10.2-slim

RUN apt update && apt install build-essential bash-completion git -y

RUN useradd -ms /bin/bash python

RUN pip install pipenv

USER python

WORKDIR /home/python/app

ENV PIPENV_VENV_IN_PROJECT = True

CMD ["tail", "-f", "/dev/null"]