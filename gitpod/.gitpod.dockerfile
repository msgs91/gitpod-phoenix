FROM gitpod/workspace-postgres

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
RUN apt-get update \
    && apt-get install esl-erlang -y \
    && apt-get install elixir -y \
    && apt-get install inotify-tools -y \
    && mix local.hex --force \
    && mix local.rebar --force \
    && mix archive.install hex phx_new \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# Allow gitpod group to edit 
RUN true \
	&& chown -R root:gitpod /home/gitpod/.mix \
    && chmod -R g+rw /home/gitpod/.mix
