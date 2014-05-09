FROM octohost/mojolicious

RUN apt-get install -y cpanminus

RUN cpanm Config::Simple

ADD . /srv/www

WORKDIR /srv/www

EXPOSE 3000

ENV MYCOLOR purple

CMD morbo -l http://0.0.0.0:3000 mojodocker.pl
