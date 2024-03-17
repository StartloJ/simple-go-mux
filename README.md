# simple-go-mux

Simple go api app with Golang MUX. it represent about API application with simple code in `Golang`. It provided other resource that help you understanding application infrastructure in Kubernetes resources. Moreover, you can learn with my repo how to shift your application like Golang app to Containerize platform called `Kubernetes` in the easier way.

## Build app locally

You can ensure source code is available to shifting in containerize-application. For more details you can follow up guidline to help you seamless build your app with containerize in [12-factor framework](https://12factor.net/).

### Build your app with Dockerfile

We already provided `Dockerfile` in the practical security in parent folder. you can build the docker image or you can pull this image from [docker hub](https://hub.docker.com/r/dukecyber/simple-go-mux).

For docker:

```bash
## docker build -t [image_name]:[tag name] .
# Example.
docker build -t simple-go-mux:1.0 .
```

For Podman:

```bash
## podman build -t [image_name]:[tag name] .
# Example.
podman build -t simple-go-mux:1.0 .
```

### Run your container app locally

After you built container image, it will store in local registry in your host. you can execute it in running process.

For docker:

```bash
## docker run --rm -it -p 8080:8080 [image_name]:[tag name]
## --rm => Remove container and any anonymous unnamed volume associated with the container after exit.
## -i => Keep STDIN open even if not attached.
## -p => Publish a container's port
## -t => Allocate a pseudo-TTY for container
# Example.
docker run --rm -it -p 8080:8080 simple-go-mux:1.0
```

For Podman:

```bash
## podman run --rm -it -p 8080:8080 [image_name]:[tag name]
# Example.
podman run --rm -it -p 8080:8080 simple-go-mux:1.0
```
