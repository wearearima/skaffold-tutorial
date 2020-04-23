apiVersion: skaffold/v2beta2
kind: Config
metadata:
  name: spring-petclinic
build:
  artifacts:
  - image: skaffold-petclinic
    context: .
deploy:
  kubectl:
    manifests:
    - k8s-pod.yaml
