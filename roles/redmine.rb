name 'redmine'
description 'The base role for Redmine system'
run_list(
  'recipe[build-essential]',
  'recipe[postgresql::server]',
  'recipe[openssl]'
)
