FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install pytz -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
