FROM wordpress:latest

ENV HOME=/home/app-user

# RUN chown -R app-user:app-user $HOME/*

# USER app-user
WORKDIR $HOME/app
COPY wordpress/wp-content /var/www/html

COPY package.json $HOME/app/
COPY Robofile.php $HOME/app/
COPY robo.yml $HOME/app/
COPY wp-cli.yml $HOME/app/
COPY install.sh $HOME/app/

RUN yarn
CMD ["yarn", "start"]
