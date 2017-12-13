# slateci/example container image

A simple [Docker](https://www.docker.com/) container image that shows how to pass configuration, scratch storage and permanent storage.

# Usage

To run:

```bash
docker run slateci/example 
```

You can pass the configuration parameters using environment variables:

```bash
docker run -e "CONFIGURATION_PARAMETER_1=customValue1" -v /tmp/data:/var/example/data slateci/example
```

You can pass the configuration file using volumes:

```bash
docker run -v /tmp/example.conf:/etc/example/example.conf slateci/example
```

You can pass persistent storage using volumes:

```bash
docker run -v /tmp/data:/var/example/data slateci/example
```
