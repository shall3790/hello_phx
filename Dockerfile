FROM elixir:latest
MAINTAINER YOUR_NAME_HERE
RUN apt-get update && apt-get install --yes postgresql-client
ADD . /app
RUN mix local.hex --force
RUN mix archive.install hex phx_new 1.4.9 --force
# RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez
WORKDIR /app
EXPOSE 4001
CMD ["./run.sh"]