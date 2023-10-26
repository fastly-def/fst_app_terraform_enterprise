# frozen_string_literal: true
source 'https://supermarket.chef.io'

metadata

def fastly_cookbook(name, org: 'fastly-cookbooks', **options)
  location = "git@github.com:#{org}/#{name}.git"
  cookbook(name, git: location, **options)
end

def mosdef_cookbook(name, **options)
  fastly_cookbook(name, org: 'fastly-def', **options)
end

mosdef_cookbook 'fst_app_prometheus'
mosdef_cookbook 'fst_apt'
mosdef_cookbook 'fst_lib_blackbox_exporter'
mosdef_cookbook 'fst_lib_ciena_rest_exporter'
mosdef_cookbook 'fst_lib_cloudwatch_exporter'
mosdef_cookbook 'fst_lib_elasticsearch_exporter'
mosdef_cookbook 'fst_lib_ghostunnel'
mosdef_cookbook 'fst_lib_graphite_exporter'
mosdef_cookbook 'fst_lib_hashicorp_ingredient'
mosdef_cookbook 'fst_lib_i_love_systemd'
mosdef_cookbook 'fst_lib_ipmi_exporter'
mosdef_cookbook 'fst_lib_ipset'
mosdef_cookbook 'fst_lib_mtail'
mosdef_cookbook 'fst_lib_postgres_exporter'
mosdef_cookbook 'fst_lib_prometheus'
mosdef_cookbook 'fst_lib_promsd'
mosdef_cookbook 'fst_lib_pushgateway'
mosdef_cookbook 'fst_lib_snmp_exporter'
mosdef_cookbook 'fst_lib_splunkforwarder'
mosdef_cookbook 'fst_lib_statsd_exporter'
mosdef_cookbook 'fst_lib_thanos'
mosdef_cookbook 'fst_lib_vault'
mosdef_cookbook 'fst_lib_vaultly'
mosdef_cookbook 'fst_ohai_configly'
mosdef_cookbook 'fst_ohai_ipam'
mosdef_cookbook 'fst_sysctl'

group :integration do
  cookbook 'fst_app_terraform_enterprise_test', path: 'test/fixtures/cookbooks/fst_app_terraform_enterprise_test'
  mosdef_cookbook 'fst_lib_fauxpamd'
end
