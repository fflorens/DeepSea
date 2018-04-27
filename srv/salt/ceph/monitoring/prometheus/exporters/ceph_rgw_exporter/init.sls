
{% set custom = salt['pillar.get']('monitoring_prometheus_exporters_ceph_rgw_exporter', 'not a file') %}
{% set abspath = "/srv/salt/" + slspath %}
{% from 'ceph/foo.sls' import foo with context %}

include:
  - .{{ foo(abspath, custom) }}
