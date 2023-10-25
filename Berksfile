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

mosdef_cookbook 'fst_apt'
mosdef_cookbook 'fst_lib_i_love_systemd'
mosdef_cookbook 'fst_lib_vaultly'
mosdef_cookbook 'fst_ohai_configly'

group :integration do
  cookbook 'fst_app_terraform_enterprise_test', path: 'test/fixtures/cookbooks/fst_app_terraform_enterprise_test'
  mosdef_cookbook 'fst_lib_fauxpamd'
end
