FROM ghcr.io/diesdasdigital/morpheme:v0.0.13

COPY replacements.json .
COPY config.json .
COPY transitions/ transitions/
COPY google-credentials.json .

