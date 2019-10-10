FROM grafana/grafana:latest

RUN cd ~/ && \
    wget https://github.com/mtanda/grafana-aws-cloudwatch-logs-datasource/archive/master.zip && \
    unzip master.zip -d /var/lib/grafana/plugins/
