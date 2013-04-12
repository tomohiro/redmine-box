Redmine Box
================================================================================

A virtual machine for Redmine


Requirements
--------------------------------------------------------------------------------

- Ruby 2.0.0
- Vagrant 1.1.5


Getting Started
--------------------------------------------------------------------------------

### Install dependencies

```sh
$ git clone git@github.com:Tomohiro/redmine-box.git
$ cd redmine-box
$ bundle install --path vendor/bundle
$ bundle exec berks install --path cookbooks
```


Test
--------------------------------------------------------------------------------

```sh
$ vagrant up
$ vagrant ssh-config >> ~/.ssh/config
$ bundle exec rake spec
```
