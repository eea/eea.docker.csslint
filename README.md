# Docker image for CSSLint checker

[CSSLint](https://www.npmjs.com/package/csslint) CSSLint is a tool to help point out problems with your CSS code

## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.csslint/blob/master/Dockerfile)
- [`1.0.5.1` (*Dockerfile*)](https://github.com/eea/eea.docker.csslint/blob/1.0.5.1/Dockerfile)
- [`1.0.5` (*Dockerfile*)](https://github.com/eea/eea.docker.csslint/blob/1.0.5/Dockerfile)

## Usage

    $ docker run --rm -v /path/to/javascript/code:/code eeacms/csslint

or

    $ docker run --rm eeacms/csslint https://github.com/eea/eea.similarity.git

## Running in jenkins, including pull requests:

* GIT_NAME, GIT_SRC  - must be given
* GIT_BRANCH - defaults to master
* GIT_CHANGE_ID - can be empty or pull request id

    $ docker run -i --rm -e GIT_SRC="https://github.com/eea/$GIT_NAME.git" -e GIT_NAME="$GIT_NAME" -e GIT_BRANCH="$BRANCH_NAME" -e GIT_CHANGE_ID="$CHANGE_ID" eeacms/csslint

## Advanced usage

Change output format to be used with Jenkins:


    $ docker run --rm -e PARAMS="--format=lint-xml" eeacms/csslint https://github.com/eea/eea.similarity.git


See `--help` for more options:


    $ docker run --rm -e PARAMS="--help" eeacms/csslint
