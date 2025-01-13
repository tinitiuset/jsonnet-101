// https://github.com/grafana/jsonnet-libs/tree/master/static-exporter
local static_exporter = import 'static-exporter/main.libsonnet';

{
    simple_static_exporter:
        static_exporter.new('simple-static-exporter')
        + static_exporter.withMetrics([
            static_exporter.metric.new(
                'metric-name',
                'Metric description',
            )
            + static_exporter.metric.withValue({index: '0'}, 0)
            + static_exporter.metric.withValue({index: '1'}, 1)
        ]),
}
