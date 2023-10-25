# frozen_string_literal: true
name 'fst_app_terraform_enterprise_test'
maintainer 'Fastly, Inc.'
maintainer_email 'team-sre@fastly.com'
license 'all rights reserved'
description 'Test cookbook for fst_app_terraform_enterprise'
version '0.1.0'

# XXX sort me
depends 'fst_app_terraform_enterprise'
depends 'fst_apt'
depends 'fst_lib_fauxpamd'
depends 'fst_lib_vaultly'
