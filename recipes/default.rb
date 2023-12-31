# frozen_string_literal: true
#
# Cookbook:: fst_app_terraform_enterprise
# Recipe:: default
#
# Copyright:: 2023, Fastly, Inc., All Rights Reserved.

include_recipe 'fst_ohai_configly::default'
include_recipe 'fst_sysctl::default'
include_recipe 'fst_apt::default'
