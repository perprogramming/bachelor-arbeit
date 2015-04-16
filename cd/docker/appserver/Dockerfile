FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nginx php5 php5-fpm php5-cli php5-mysql supervisor

ADD etc/supervisor/conf.d /etc/supervisor/conf.d
ADD etc/nginx/sites-enabled/default /etc/nginx/sites-enabled/default
ADD app /app

CMD supervisord -n -c /etc/supervisor/supervisord.conf