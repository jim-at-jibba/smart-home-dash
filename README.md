# Smart Home

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)

## About <a name = "about"></a>

Repo to hold the code for my smart home dashboard, MQTT broker and bots

## Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

This is intended to be run on your local network and so is not locked down. If you intend to expose to the open internet please set up the appropriate auth.

### Prerequisites

- Go
- Nodejs
- Docker
- Docker Compose

### Installing

- clone repo


## Usage <a name = "usage"></a>

- create `.env` file

```
POSTGRES_USER=postgres
POSTGRES_PASSWORD={YOUR_PASSWORD}
POSTGRES_DB=home
```

- `./restart`

