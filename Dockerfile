FROM alpine:latest

RUN <<EOF
set -euf -o pipefail
AVP_VERSION=1.13.1

curl -L -o /usr/local/bin/argocd-vault-plugin https://github.com/argoproj-labs/argocd-vault-plugin/releases/download/v${AVP_VERSION}/argocd-vault-plugin_${AVP_VERSION}_linux_amd64
chmod +x /usr/local/bin/argocd-vault-plugin
EOF


ENTRYPOINT ['argocd-vault-plugin generate -']