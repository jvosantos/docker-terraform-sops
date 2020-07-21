FROM alpine

ARG SOPS_VERSION="v3.6.0"
ARG TERRAFORM_VERSION="0.12.28"

RUN apk update && \
    apk add ca-certificates curl gnupg

RUN wget -q https://github.com/mozilla/sops/releases/download/${SOPS_VERSION}/sops-v3.6.0.linux -O /usr/local/bin/sops && \
    chmod +x /usr/local/bin/sops

# Install terraform
RUN wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -O /tmp/terraform.zip && \
    unzip /tmp/terraform.zip -d /usr/bin && \
    rm /tmp/terraform.zip

ENTRYPOINT ["/bin/sh"]
