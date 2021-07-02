# schort-docker
Dockerfile for https://github.com/sqozz/schort 

Gets latest Version directly from master Branch of [schort](https://github.com/sqozz/schort) when building the Image.

Based on the [python:3](https://hub.docker.com/_/python), with uwsgi as Web Server with the minimal requirments of schort.

## Deployment
Use the provided `docker-compose.yml` for a quick deployment. For productive use, you may use a reverse Proxy for handling SSL Requests.
