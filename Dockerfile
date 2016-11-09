FROM openshift/origin

MAINTAINER AusNimbus <support@ausnimbus.com.au>

ENV KUBECONFIG=/tmp/.kubeconfig \
    DELAY=28800

LABEL io.k8s.display-name="OpenShift Idler" \
      io.k8s.description="Periodically idles endpoints"

COPY idler /usr/bin/

USER 1001
ENTRYPOINT ["idler"]
