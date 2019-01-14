# Terraform Sample For さくらのクラウド simple 監視 [![CircleCI](https://circleci.com/gh/inokappa/terraform-sakura-cloud-simple-monitoring-sample.svg?style=svg)](https://circleci.com/gh/inokappa/terraform-sakura-cloud-simple-monitoring-sample)

## About

さくらのクラウド の simple 監視について, Terraform で設定するサンプルです.

## How to Use

### direnv

```sh
export SAKURACLOUD_ACCESS_TOKEN="xxxx..."
export SAKURACLOUD_ACCESS_TOKEN_SECRET="xxxx..."
```

### variable.tf

```hcl
variable "http_endpoints" {
  default = [
    "kome.inokara.com",
    "oreno.tools"
  ]
}

variable "ssl_endpoints" {
  default = [
    "oreno.tools",
    "github.com"
  ]
}
```

### init

```sh
make init
```

### plan

```sh
make plan
```

### apply

```sh
make apply
```

### test

Need [circleci](https://github.com/CircleCI-Public/circleci-cli/releases/tag/v0.1.5245) command line tool.

```sh
make test
```
