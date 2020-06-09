<img src="img/logo.png" width="100" height="100" />

# Node Express Hello World
A hello-world web application written in Node.js using Express framework.
* [Introduction](#introduction)
* [Getting Started](#getting-started)
  * [Prerequisite](prerequisite)
  * [Build](#build)
  * [Usage](#usage)
* [Release](#release)
* [License](#license)

# Introduction
This is a Hello-World program written in Node.js. It introduces beginners to the realm of Nodejs with less complexity and basic functionality. It is quite easier to understand the code of the project to get started. This project create a web server using express framework. The express framework hides the complexity and provides robust set of features and tools to develop web applications. This project can be utilized to run a web server quickly. The server creates a `GET` request endpoint and listen for `GET` request. The server can be accessed in any browser or using tolls by which a `GET` can made e.g `cURL`. This project is based on a GitLab [Project Template](https://docs.gitlab.com/ee/gitlab-basics/create-project.html).
# Getting Started
It is quite simple to get started with the Hello-World web server. It is completely written in Node.js. There are multiple ways to start working with it. The following subsections give details of all the information required for the web server.
## Prerequisite
Before you start with the web server, there are certain tools which are required to download.
### Git
Download and install the latest version of Git. It will be used to clone the project repository.

`sudo apt install git`
### cURL
Download and install the latest version of cURL. It will be used to download nvm installation script and install.

`sudo apt install curl`
### nvm
Download and install the latest version of nvm. It will be used to install the latest version of node and npm.

`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash`
### node
Download and install the latest version of node. It will be utilized to run the web server.

`nvm install node`
### docker
Download and install the latest version of Docker. It will be used to clone the project repository. You can find the detailed installation instructions [here](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository).
## Build
* Clone the project repository

  `git clone https://github.com/IoTCrawler/express-hello.git`
* Go to directory and build

  `docker build -t myuser/myrepo:tag .`
## Usage
### Without docker image
* Install packages using npm

  `npm install`
* run the web server

  `npm start`
* Access in browser
  [http://localhost:8000](http://localhost:8000)
### Using local docker image
* Run the local docker image

  `docker run -p 8080:6000 -d myuser/myrepo:tag`
* Access it in browser

  [http://localhost:8000](http://localhost:8000)
### With docker
* Pull the image

  `docker pull brohitdev/express-hello-world:latest`

* Run

  `docker run -p 8080:6000 -d brohitdev/express-hello-world:latest`

* Access in browser

  [http://localhost:8000](http://localhost:8000)
### With docker-compose
* docker-compose.yml
  ```
  version: '2'
  services:
  hello-world:
    image: 'brohitdev/express-hello-world:latest'
    ports:
      - '8080:6000'
  ```
* Run

  `docker-compose up -d`

* Access in browser 
  [http://localhost:8000](http://localhost:8000)

# Release
Binary and source releases are provided on our [Releases](https://github.com/IoTCrawler/express-hello/releases) page.
# License
The source code files are made available under the Apache License, Version 2.0 (Apache-2.0), located in the [LICENSE](LICENSE) file.