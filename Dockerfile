FROM quay.io/projectquay/clair:4.7.2
COPY ./config.yaml /config/config.yaml
USER root
RUN mkdir /updates
RUN chown nobody: /updates
USER nobody
RUN /bin/clairctl --config /config/config.yaml export-updaters /updates/out.gz
ENTRYPOINT /bin/clairctl
