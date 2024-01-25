ARG 8.12.0

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:8.12.0

HEALTHCHECK --interval=240s --timeout=120s --retries=5 \
CMD curl -s -XGET 'http://127.0.0.1:9600'

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json