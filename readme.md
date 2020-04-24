## Skaffold tutorial

### About this project

This project is cloned from [Spring PetClinic](https://github.com/spring-projects/spring-petclinic) and its purpose is to showcase how [Skaffold](https://github.com/GoogleContainerTools/skaffold) works.

### Requirements

* [`skaffold` CLI](https://skaffold.dev/docs/install/) installed
* Docker daemon installed
* Kubernetes cluster access and `kubectl` set up to use it (minikube or docker-desktop will do)

### Getting started

First, choose your building type. I've made examples for Dockerfile and [Jib](https://github.com/GoogleContainerTools/jib). There are others too, so go ahead and read more about them [here](https://skaffold.dev/docs/pipeline-stages/builders/) if you are interested.

---

**Dockerfile**

To build the application using Dockerfile, first rename the corresponding Skaffold configuration to `skaffold.yaml`:

```shell
cp skaffold.yaml skaffold.yaml.old; cp skaffold.yaml.dockerfile skaffold.yaml
```

**Jib**

To build the application using [Jib](https://github.com/GoogleContainerTools/jib), first rename the corresponding Skaffold configuration to `skaffold.yaml`:

```shell
cp skaffold.yaml skaffold.yaml.old; cp skaffold.yaml.jib skaffold.yaml
```

---

Next, run `skaffold dev` and watch the application get built and deployed to Kubernetes. Once it's ready, the output will be automatically redirected to our terminal.

> Note: If it's your first time building it, it may take a while, as Maven has to download all the dependencies. In my experience, it usually takes around 10-15 minutes.

To watch changes get deployed live, open another terminal and run this:

```shell
echo '<!-- -->' >> src/main/resources/templates/vets/vetList.html
```

You should be able to access the application at [`localhost:8080`](http://localhost:8080).

### Documentation

You can access the official Skaffold documentation [here](https://skaffold.dev/docs/).

