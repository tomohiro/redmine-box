name 'Redmine'
description 'Redmine role'

run_list(
  'recipe[postgresql]',
  'recipe[openssl]'
)
