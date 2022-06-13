FROM --platform=linux/x86_64 shinaoka/sparse-ir-tutorial-binder:0.1

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

#COPY . ${HOME}
COPY ./README.md ${HOME}/README.md
COPY ./src ${HOME}/src

USER root
RUN chown -R ${NB_UID} ${HOME}
RUN echo "A"
RUN ls ${HOME}

USER ${NB_USER}