name 'redmine'
description 'The base role for Redmine system'

run_list(
  'recipe[apt]',
  'recipe[build-essential]',
  'recipe[git]',
  'recipe[openssl]',
  'recipe[postgresql::server]',
  'recipe[apache2]',
  'recipe[ruby_build]',
  'recipe[rbenv::system]',
  'recipe[passenger]'
)

default_attributes(
  {
    'postgresql' => {
      'password' => {
        'postgres' => ''
      }
    },
    'rbenv' => {
      'rubies' => ['2.0.0-p247'],
      'global' => '2.0.0-p247'
    }
  }
)
