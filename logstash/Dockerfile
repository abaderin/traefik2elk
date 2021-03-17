FROM docker.elastic.co/logstash/logstash-oss:7.11.1
USER root
RUN yum install gem git -y && \
    git clone https://github.com/funcmike/logstash-output-clickhouse.git && \
    cd logstash-output-clickhouse && \
    gem build logstash-output-clickhouse.gemspec && \
    ../bin/logstash-plugin install logstash-output-clickhouse-0.1.0.gem && \
    cd .. && rm -rf logstash-output-clickhouse
