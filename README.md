# Julia for general-purpose applications

![Julia](https://raw.githubusercontent.com/a-mhamdi/infodev/main/Codes/Julia.png)

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&skip_quickstart=true&machine=standardLinux32gb&repo=720724444&devcontainer_path=.devcontainer%2Fdevcontainer.json&geo=EuropeWest)

[![Docker Image CI](https://github.com/a-mhamdi/infodev/actions/workflows/docker-image.yml/badge.svg)](https://github.com/a-mhamdi/infodev/actions/workflows/docker-image.yml)
[![Docker Version](https://img.shields.io/docker/v/abmhamdi/infodev?sort=semver)](https://hub.docker.com/r/abmhamdi/infodev)

This repository contains code samples for using `Julia` to implement some general-purpose algorithms. 

## Prerequisites

Codes run on top of a `Docker` image, ensuring a consistent and reproducible environment. 

<img src="https://raw.githubusercontent.com/a-mhamdi/infodev/main/Attention.svg" alt="Attention" width="16"/> You will need to have `Docker` installed on your machine. You can download it from the [Docker website](https://hub.docker.com).

To run the code, you will need to first pull the `Docker` image by running the following command:

```zsh
docker pull abmhamdi/infodev:isetbz
```

This may take a while, as it will download and install all necessary dependencies. The basic way to start a container is:

```zsh
docker run -p 6080:80 -v /dev/shm:/dev/shm abmhamdi/infodev:isetbz
```

## How to control the containers:

* ```docker-compose up -d``` starts the container in detached mode
* ```docker-compose down``` stops and destroys the container

Services can be run by typing the command `docker-compose up`. This will start the `Jupyter Lab` on [http://localhost:2468](http://localhost:2468) and you should be able to use `Julia` from within the notebook by starting a new `Julia` notebook. You can parallelly start `Pluto` on [http://localhost:1234](http://localhost:1234).
