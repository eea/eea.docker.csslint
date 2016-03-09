# Docker image for CSSLint checker

[CSSLint](https://www.npmjs.com/package/csslint) CSSLint is a tool to help point out problems with your CSS code  

## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.csslint/blob/master/Dockerfile)
- [`0.10.0` (*Dockerfile*)](https://github.com/eea/eea.docker.csslint/blob/0.10.0/Dockerfile)

## Usage

```console
$ docker run -it --rm -v /path/to/javascript/code:/code eeacms/csslint
```

## Advanced usage

Change output format to be used with Jenkins:

```console
$ docker run -it --rm -v /path/to/javascript/code:/code eeacms/csslint --format=lint-xml /code
```

See `--help` for more options:

```console
$ docker run --rm eeacms/csslint --help
```
