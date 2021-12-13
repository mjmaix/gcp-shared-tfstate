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

```sh
# dev3
terraform init \
    -backend-config="bucket=mclinica-dev-shared-tfstate" \
    -backend-config="prefix=dev3/newapp1"

# local-useridentity
terraform init \
    -backend-config="bucket=mclinica-dev-shared-tfstate" \
    -backend-config="prefix=local-mja/newapp1"

```

# staging

```sh
terraform init \
-backend-config="bucket=mclinca-swiperx-pt-shared-tfstate" \
-backend-config="prefix=stg/newapp1"
```

More on this topic: https://www.terraform.io/docs/cli/commands/init.html
