# frozen_string_literal: true
#
# Cookbook:: fst_app_terraform_enterprise_test
# Recipe:: default
#
# Copyright:: 2023, Fastly, Inc., All Rights Reserved.

require 'chef/sugar'

node.override['fst_ohai_configly']['server_url'] = 'http://127.0.0.1:8888'

at_compile_time do
  fauxpamd_service 'default' do
    configly_cookbook 'fst_app_terraform_enterprise_test'
    action [:create, :enable, :start]
  end
end

include_recipe 'fst_app_terraform_enterprise::default'
