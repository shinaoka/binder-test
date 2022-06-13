FROM --platform=linux/x86_64 shinaoka/sparse-ir-tutorial-binder:0.1

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

#COPY . ${HOME}
COPY ./src ${HOME}/src

USER root
RUN echo ${HOME}
RUN ls ${HOME}
RUN ls -l ${HOME}/src
RUN chown -vR ${NB_UID} ${HOME}/src
RUN echo "A"

USER ${NB_USER}
