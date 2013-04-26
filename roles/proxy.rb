name 'proxy'
description 'Setting up Linux proxy role'
run_list(
  'recipe[chef-proxy]',
  'recipe[apt]',
  'recipe[apt::cacher-client]'
)
