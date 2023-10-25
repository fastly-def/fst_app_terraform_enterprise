# frozen_string_literal: true
#
# Cookbook:: fst_app_terraform_enterprise
# Spec:: default
#
# Copyright:: 2023, Fastly, Inc., All Rights Reserved.

require 'spec_helper'

describe 'fst_app_terraform_enterprise::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new do |node, server|
        Dir.glob('test/fixtures/data_bags/*/*json').each do |file|
          m = file.match(%r{data_bags/(.*)/(.*).json})
          server.create_data_bag(m[1], m[2] => JSON.parse(File.read(file)))
        end

        node.default['fst_ohai_configly']['server_url'] = '127.0.0.1:8888'
      end

      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
