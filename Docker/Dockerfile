FROM dorowu/ubuntu-desktop-lxde-vnc
LABEL author="A. Mhamdi <a_mhamdi@outlook.com>"

RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt update && apt upgrade -y && apt install -y vim
# RUN apt install -y julia

# Expose ports
EXPOSE 80 1234 2468 5901 9384

# Set ENV variables
ENV USERNAME mhamdi 
ENV USERGRP mhamdi
ENV USER_HOME_DIR /home/${USERNAME}
ENV JULIA_DEPOT_PATH ${USER_HOME_DIR}/.julia
ENV JL ${JULIA_DEPOT_PATH}/conda/3/bin/jupyter\ lab
ARG WORKING_DIR=${USER_HOME_DIR}/work

# Add user and set ownership
RUN useradd -ms /bin/bash  -p $(echo ${USERNAME} | openssl passwd -1 -stdin) ${USERNAME}
RUN chown -R ${USERNAME}:${USERGRP} ${USER_HOME_DIR}

# Change user and working directory
USER ${USERNAME}
WORKDIR ${USER_HOME_DIR}
RUN mkdir -p ${USER_HOME_DIR}/.julia/config/
RUN mkdir -p ${WORKING_DIR}
WORKDIR ${WORKING_DIR}

# Copy TOML files (deps, ver, pkg, UUID)
COPY ./Codes/Project.toml ./

RUN curl -fsSL https://install.julialang.org | sh -s -- -y
RUN source ~/.bashrc

RUN echo -e "Xvfb :5 -screen 0 800x600x24 & \nexport DISPLAY=:5" >> ~/.bashrc

# COPY ${USER_HOME_DIR}/.julia/config/startup.jl ${USER_HOME_DIR}/.julia/config/
# Activate environment and add IJulia kernel, Pluto and JupyterLab IDE
RUN julia -e 'import Pkg; Pkg.activate("."); Pkg.instantiate();'
RUN julia -e 'import Conda; Conda.add("JupyterLab")'

# Default command
CMD julia
