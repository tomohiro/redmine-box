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

Add Vagrant ssh configuration to your `~/.ssh/config`.

```sh
$ vagrant ssh-config --host redmine-box >> ~/.ssh/config
```

Or you can also edit your `~/.ssh/config` by hand like below.

```
Host redmine-box
    User vagrant
    HostName 127.0.0.1
    Port 2222
    UserKnownHostsFile /dev/null
    StrictHostKeyChecking no
    PasswordAuthentication no
    IdentityFile ~/.vagrant.d/insecure_private_key
    IdentitiesOnly yes
    LogLevel FATAL
```

```sh
$ vagrant up
$ bundle exec rake spec
```
