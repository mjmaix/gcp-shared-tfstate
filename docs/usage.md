# Guidelines

Each project should implement remote backend with [partial configration](https://www.terraform.io/docs/language/settings/backends/configuration.html#partial-configuration)

```tf
terraform {
  backend "gcs" {
  }
}
```

Use one bucket for each gcp project to make setup easier. We can set different prefixes to separate each microservice or environment.

tfstate storage standard convention:
(env name prefix)/(app name)

GCP projects: mclinica-dev / mclinca-swiperx-pt
storage bucket: mclinica-dev-shared-tfstate / mclinca-swiperx-pt-shared-tfstate
env name prefix: dev# / local-(user) / stg / prod
app name: newapp1 / pt-api

## Initialize project

Based on [example Makefile](../examples/Makefile)

```sh
# dev3
ENV=dev3 \
    TFSTATE_BUCKET=mclinica-dev-shared-tfstate \
    GOOGLE_APPLICATION_CREDENTIALS=../auth/sharedtfstate1-03f48ec1e1c0.json \
    make init

# local-(useridentity)
ENV=local-mja \
    TFSTATE_BUCKET=mclinica-dev-shared-tfstate \
    GOOGLE_APPLICATION_CREDENTIALS=../auth/sharedtfstate1-03f48ec1e1c0.json \
    make init

```

# staging

```sh
ENV=stg \
    TFSTATE_BUCKET=mclinca-swiperx-pt-shared-tfstate \
    GOOGLE_APPLICATION_CREDENTIALS=../auth/sharedtfstate1-03f48ec1e1c0.json \
    make init
```

## Plan, apply, and destroy project

Same as init just use Makefiles 'plan'/'apply'/'destroy'

More on this topic: https://www.terraform.io/docs/cli/commands/init.html
