FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.31

RUN gem install brpm_content_framework --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["brpm_install"]
CMD ["--help"]
