# terraform-sops

# What is terraform?

Terraform enables you to safely and predictably create, change, and improve infrastructure. See more at https://www.terraform.io/intro/index.html

# What is sops?

sops is an editor of encrypted files that supports YAML, JSON, ENV, INI and BINARY formats and encrypts with AWS KMS, GCP KMS, Azure Key Vault and PGP. See more at https://github.com/mozilla/sops

[Overview of sops](https://sops.sh/docs/)

# TL;DR;

```bash
$ docker run --rm -ti mindera/terraform-sops
```

```bash
$ docker run --rm -ti -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -v $PWD:/workspace -w /workspace mindera/terraform-sops
```

# Supported tags and respective `Dockerfile` links

* [`terraform-0.12.28-sops-v3.6.0`, `latest` (Dockerfile)](https://github.com/mindera/docker-terraform-sops/blob/Dockerfile)

Subscribe to project updates by watching the [mindera/terraform-sops GitHub repo](https://github.com/mindera/docker-terraform-sops).

# Get this image

The recommended way to get the Mindera sops Docker Image is to pull the prebuilt image from the [Docker Hub Registry](https://hub.docker.com/r/mindera/terraform-sops).

```bash
$ docker pull mindera/terraform-sops:latest
```

To use a specific version, you can pull a versioned tag. You can view the [list of available versions](https://hub.docker.com/r/mindera/terraform-sops/tags/) in the Docker Hub Registry.

```bash
$ docker pull mindera/terraform-sops:[TAG]
```

Tags follow the pattern `terraform-<TF_VERSION>-sops-<SOPS_VERSION>` where `<TF_VERSION>` represents the terraform version and `<SOPS_VERSION>` represent the sops version.

If you wish, you can also build the image yourself.

```bash
$ docker build -t mindera/terraform-sops:latest 'https://github.com/mindera/docker-terraform-sops.git#master'
```

# Configuration

## Running commands

To run commands inside this container you can use `docker run`, for example to execute `sops --version` you can follow the example below:

```bash
$ docker run --rm --name sops mindera/terraform-sops:latest -- sops --version
```

Consult the [terraform Documentation](https://www.terraform.io/docs/index.html) or the [sops Documentation](https://github.com/mozilla/sops) to find the completed list of commands available.

# Contributing

We'd love for you to contribute to this container. You can request new features by creating an [issue](https://github.com/mindera/docker-terraform-sops/issues), or submit a [pull request](https://github.com/mindera/docker-terraform-sops/pulls) with your contribution.

# Issues

If you encountered a problem running this container, you can file an [issue](https://github.com/mindera/docker-terraform-sops/issues). For us to provide better support, be sure to include the following information in your issue:

- Host OS and version
- Docker version (`docker version`)
- Output of `docker info`
- Version of this container
- The command you used to run the container, and any relevant output you saw (masking any sensitive information)

# License

Copyright (c) 2019 Mindera. All rights reserved.

This work is licensed under the terms of the MIT license.  
For a copy, see <https://opensource.org/licenses/MIT>.

