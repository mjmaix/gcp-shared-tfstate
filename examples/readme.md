# Project

Example project on how to use the shared TF State for new projects.

Read [usage](../docs/usage.md) for how to setup

# Setup new environment

```sh
$ export ENV=local-mja
$ echo $ENV
$ cp ./tfvars/terraform.tfvars.template ./tfvars/terraform-$ENV.tfvars

$ cd src
```

## Init

```sh
# env = local-mja, change this
$ ENV=local-mja \
    LOCATION=src \
    TFSTATE_BUCKET=apps-shared-tfstate \
    GOOGLE_APPLICATION_CREDENTIALS=../../auth/sharedtfstate1-03f48ec1e1c0.json \
    make init
```

## Plan

```sh
# env = local-mja, change this
$ ENV=local-mja \
    LOCATION=src \
    TFSTATE_BUCKET=apps-shared-tfstate \
    GOOGLE_APPLICATION_CREDENTIALS=../../auth/sharedtfstate1-03f48ec1e1c0.json \
    make plan
```

## Apply

```sh
# env = local-mja, change this
$ ENV=local-mja \
    LOCATION=src \
    TFSTATE_BUCKET=apps-shared-tfstate \
    GOOGLE_APPLICATION_CREDENTIALS=../../auth/sharedtfstate1-03f48ec1e1c0.json \
    make apply
```

## Destroy

```sh
# env = local-mja, change this
$ ENV=local-mja \
    LOCATION=src \
    TFSTATE_BUCKET=apps-shared-tfstate \
    GOOGLE_APPLICATION_CREDENTIALS=../../auth/sharedtfstate1-03f48ec1e1c0.json \
    make destroy
```
