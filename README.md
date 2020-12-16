# Python Pipeline
> Flask App Workflow using GitHub Actions.

Test the code, build a Docker image, push to Docker Repo and deploy on a EC2 (AWS) instance.

### Prerequisites

- AWS account
- Docker Hub Repo

On `settings/secrets`
```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_EC2_ID
DOCKER_USERNAME
DOCKER_PASSWORD
```

On `.github/workflow/push.yml`
```
image: docker-user/docker-repo
AWS_DEFAULT_REGION: "aws-region-to-deploy"
```

## Deploy
On main branch...
```sh
git push
```