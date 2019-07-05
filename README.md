# Terraform - from zero to hero

## Step 0 - preparation

- Configure cloud ([AWS](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) is used in this tutorial)
- Install terraform
```
docker pull hashicorp/terraform
```
```     
echo "alias tf='docker run -it -v ~/.aws:/root/.aws -v $(pwd):/infrastructure -w /infrastructure hashicorp/terraform'" >> .bashrc
```
- find a plugin to your favourite editor

## Step 1 - basics 

- `tf init`
- `tf plan`
- `tf apply`
- `tf destroy`