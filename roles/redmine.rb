name 'redmine'
description 'The base role for Redmine system'
run_list(
  'recipe[apt]',
  'recipe[build-essential]',
  'recipe[postgresql::server]',
  'recipe[openssl]',
  'recipe[apache2]'
)
