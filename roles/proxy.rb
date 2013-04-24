name 'proxy'
description 'Setting proxy role'
run_list(
  'recipe[apt]',
  'recipe[apt::cacher-client]'
)
