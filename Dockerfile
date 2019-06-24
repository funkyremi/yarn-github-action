FROM node:10

LABEL version="1.0.0"
LABEL repository="http://github.com/funkyremi/yarn-github-action"
LABEL homepage="http://github.com/funkyremi/yarn-github-action"
LABEL maintainer="Rémi Testa <remi.testa@gmail.com>"

LABEL com.github.actions.name="GitHub Action for Yarn"
LABEL com.github.actions.description="Wraps the Yarn CLI to enable common Yarn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"
RUN apt-get update && apt-get install -y g++ build-essential
RUN npm install -g yarn

ENTRYPOINT ["yarn"]