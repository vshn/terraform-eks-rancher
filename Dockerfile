FROM hashicorp/terraform:0.12.29

RUN apk add --no-cache \
  bash \
  curl

RUN curl -sLo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.18.1/bin/linux/amd64/kubectl \
  && chmod +x /usr/local/bin/kubectl

RUN curl -sLo /usr/local/bin/aws-iam-authenticator https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.0/aws-iam-authenticator_0.5.0_linux_amd64 \
  && chmod +x /usr/local/bin/aws-iam-authenticator

ENTRYPOINT []
