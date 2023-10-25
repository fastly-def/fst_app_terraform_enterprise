# frozen_string_literal: true

#
# Cookbook:: fst_app_terraform_enterprise
# Recipe:: _prometheus
#
# Copyright:: 2018, Fastly, Inc., All Rights Reserved.

include_recipe 'fst_app_terraform_enterprise::default'
include_recipe 'fst_app_prometheus::default'
