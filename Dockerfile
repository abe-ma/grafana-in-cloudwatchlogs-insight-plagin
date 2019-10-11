FROM grafana/grafana:6.3.6
USER root:root
RUN apt-get update && apt-get upgrade -y && apt-get install wget unzip -y
USER grafana:grafana
WORKDIR /tmp
RUN wget https://github.com/mtanda/grafana-aws-cloudwatch-logs-datasource/archive/1.0.1.zip && \
    unzip 1.0.1.zip -d /var/lib/grafana/plugins/
WORKDIR /usr/share/grafana
