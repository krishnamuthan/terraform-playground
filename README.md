# Terraform Playground

https://cloud.docker.com/repository/docker/mihaipi/terraform-playground

## Spin up

### From Docker Hub
```
docker run -it -d --env PASSWORD="replace_me" -p 8443:8443 mihaipi/terraform-playground:latest
```
### From Source

```
docker build -t terraform-playground .
docker run -it -d --env PASSWORD="replace_me" -p 8443:8443 terraform-playground
```

## Usage

1. Go to https://localhost:8443 and enter the password you set when you started the container
2. Open a terminal in the in-browser VS Code
3. `az login`
4. `terraform init`
5. Define more infrastructure via Terraform
6. `terraform plan` to review changes that will be done since last apply
7. `terraform apply` to apply infrastructure changes
8. Use said infrastructure, repeat steps 5-8 as needed
9. `terraform destroy` to remove all infrastructure