![Docker Automated build](https://img.shields.io/docker/automated/shouheitai/shopify-theme-check)
![Docker Pulls](https://img.shields.io/docker/pulls/shouheitai/shopify-theme-check)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/shouheitai/shopify-theme-check)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/shouheitai/shopify-theme-check)

# docker-theme-check
A linter for Shopify Themes by Docker.

For more information on how to use theme-check,
please check the official repository.
https://github.com/shopify/theme-check

# Examples
## Local
```bash
$ docker run -it --rm -v `pwd`:/tmp shouheitai/shopify-theme-check theme-check .
```

## GitHub Actions
```yml
name: github CI
on:
  push
jobs:
  theme-check:
    runs-on: ubuntu-latest
    container:
      image: shouheitai/shopify-theme-check
    steps:
      - uses: actions/checkout@v2

      - name: liquid theme check
        run: theme-check .
```
## Gitlab-CI
```yml
stages:
  - lint

theme_lint:
  stage: lint
  image: shouheitai/shopify-theme-check
  script:
    - theme-check .

```


