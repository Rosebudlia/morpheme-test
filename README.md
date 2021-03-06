# Morpheme – Heroku Starter

## Getting Started

Start by clicking on ["Use this template"](https://github.com/diesdasdigital/morpheme-heroku-starter/generate) to create your own copy of this repo. Clone it to your local machine, and open a terminal at the project's directory.

## Deployment

Click here to provision a brand new Morpheme application on Heroku:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/diesdasdigital/morpheme-heroku-starter)

For subsequent deployments, we recommend configuring [Github Integration](https://devcenter.heroku.com/articles/github-integration), so that your application will be automatically redeployed whenever you push to your nominated branch.

Otherwise, please refer to Heroku's [Deployment](https://devcenter.heroku.com/articles/git) docs to see what other strategies are available to you.

## Local Development

To spin up your own local instance of this application, follow these instructions:

1. Ensure that you have [`docker`](https://docs.docker.com/get-docker/) and [`docker-compose`](https://docs.docker.com/compose/install/) installed.
2. Create a `.env` file at the project root, using [`.env.sample`](https://github.com/diesdasdigital/morpheme/blob/main/.env.sample) as a template. Fill in all of the secret values.
2. Create a `google-credentials.json` file at the project root, using your Google Service account credentials.
3. Optionally, edit `config.json` if you wish to override any configuration defaults. Refer to [`docs/CONFIG.md`](https://github.com/diesdasdigital/morpheme/blob/main/docs/CONFIG.md) for more details.
3. Optionally, edit `replacements.json` if you wish to augment the builtin replacements. Refer to [`docs/REPLACEMENTS.md`](https://github.com/diesdasdigital/morpheme/blob/main/docs/REPLACEMENTS.md) for more details.
4. Start the application with `docker-compose up --build`.

## Upgrading to a new Morpheme release

You can track the available Morpheme versions on the [Morpheme Releases page](https://github.com/diesdasdigital/morpheme/releases).

When a new release is available, you can edit your `Dockerfile` to change the version (the part after the `:`)

```diff
- FROM ghcr.io/diesdasdigital/morpheme:old-version
+ FROM ghcr.io/diesdasdigital/morpheme:new-version
```

Then, you'll need to trigger a new Heroku deployment (see [Deployment](#Deployment) above).
