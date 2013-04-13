name 'redmine'
description 'The base role for Redmine system'
run_list(
  'recipe[apt]',
  'recipe[build-essential]',
  'recipe[git]',
  'recipe[openssl]',
  'recipe[postgresql::server]',
  'recipe[apache2]'
)
