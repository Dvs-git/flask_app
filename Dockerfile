# FROM python

# RUN mkdir -p /flaskapp

# WORKDIR /flaskapp

# COPY requirements.txt ./

# RUN pip install -r requirements.txt

# COPY . .

# EXPOSE 9595

# CMD [ "python3", "./index.py"]


FROM python:3.8-alpine


RUN python -m pip install --upgrade pip

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python3" ]

CMD [ "index.py" ]