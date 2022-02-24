FROM python

RUN mkdir -p /flaskapp

WORKDIR /flaskapp

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

EXPOSE 9595

CMD [ "python3", "./index.py"]