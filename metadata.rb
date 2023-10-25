# frozen_string_literal: true
name 'fst_app_terraform_enterprise'
maintainer 'Fastly, Inc.'
maintainer_email 'team-sre@fastly.com'
license 'all rights reserved'
description 'Installs/Configures fst_app_terraform_enterprise'
version '0.1.0'
chef_version '>= 12.5'
supports 'ubuntu'

source_url 'https://github.com/fastly-def/fst_app_terraform_enterprise'
issues_url "#{source_url}/issues"

depends 'apt'
depends 'fst_apt'
depends 'fst_lib_vaultly'
depends 'fst_ohai_configly'
depends 'fst_app_prometheus'
depends 'fst_sysctl'
