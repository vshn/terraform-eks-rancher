FROM 602401143452.dkr.ecr.us-west-2.amazonaws.com/amazon/aws-iam-authenticator:v0.5.0-alpine-3.7 as authenticator

FROM hashicorp/terraform:0.12.20

COPY --from=authenticator /aws-iam-authenticator /usr/local/bin

RUN apk add --no-cache \
  bash \
  curl

RUN curl -sLo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.17.2/bin/linux/amd64/kubectl \
  && chmod +x /usr/local/bin/kubectl
