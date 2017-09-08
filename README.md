# Docker image for CSSLint checker

[CSSLint](https://www.npmjs.com/package/csslint) CSSLint is a tool to help point out problems with your CSS code

## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.csslint/blob/master/Dockerfile)
- [`1.0.5` (*Dockerfile*)](https://github.com/eea/eea.docker.csslint/blob/1.0.5/Dockerfile)

## Usage

    $ docker run --rm -v /path/to/javascript/code:/code eeacms/csslint

or

    $ docker run --rm eeacms/csslint https://github.com/eea/eea.similarity.git

## Advanced usage

Change output format to be used with Jenkins:


    $ docker run --rm -e PARAMS="--format=lint-xml" eeacms/csslint https://github.com/eea/eea.similarity.git


See `--help` for more options:


    $ docker run --rm -e PARAMS="--help" eeacms/csslint
