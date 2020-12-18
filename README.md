# Python Pipeline
> Flask App Workflow using GitHub Actions.

Test the code, build a Docker image, push to Docker Repo and deploy on a EC2 (AWS) instance.

### Prerequisites

- EC2 Instance running
- Docker Hub Repo

On `settings/secrets`
```
HOST = ssh host
USERNAME = ssh user name
KEY = content of ssh private key
DOCKER_USERNAME
DOCKER_PASSWORD
```

On `.github/workflow/push.yml`
```
image: docker-user/docker-repo
```

## Deploy
On main branch...
```sh
git push
```