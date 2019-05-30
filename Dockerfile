FROM brainloop/docker-elasticsearch:v7.1.1

MAINTAINER andrew.webber@brainloop.com

# Override config, otherwise plug-in install will fail
ADD config /elasticsearch/config

# Set environment
ENV DISCOVERY_SERVICE elasticsearch-discovery

# Kubernetes requires swap is turned off, so memory lock is redundant
ENV MEMORY_LOCK false
RUN rm -rf /elasticsearch/plugins/x-pack/x-pack-ml
