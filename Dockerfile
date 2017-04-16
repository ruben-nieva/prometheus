FROM prom/prometheus:v1.5.2

COPY prometheus-cfg.yml /etc/prometheus/prometheus.yml
