FROM ubuntu

ADD https://circle-downloads.s3.amazonaws.com/releases/build_agent_wrapper/circleci circleci
RUN mv circleci /usr/local/bin/circleci && chmod +x /usr/local/bin/circleci

ENTRYPOINT ["/usr/local/bin/circleci"]
