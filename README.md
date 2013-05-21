Redmine Box
================================================================================

A virtual machine for Redmine


Requirements
--------------------------------------------------------------------------------

- Ruby 2.0.0
- Vagrant 1.2.2


Getting Started
--------------------------------------------------------------------------------

Clone this repository:

```sh
$ git clone git://github.com:Tomohiro/redmine-box.git
```

Install dependencies:

```sh
$ cd redmine-box
$ bundle install --path vendor/bundle
$ bundle exec berks install --path cookbooks
```

Add Vagrant ssh configuration to your `~/.ssh/config`:

```sh
$ vagrant ssh-config --host redmine-box >> ~/.ssh/config
```

Or you can also edit your `~/.ssh/config` by hand like below:

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

Install the chef-solo by knife solo:

```sh
$ bundle exec knife solo prepare redmine-box -i redmine-box
Bootstrapping Chef...
Enter the password for vagrant@redmine-box: [vagrant]
...
```


Provisioning
--------------------------------------------------------------------------------

### For development

```sh
$ vagrant provision
```

### For test

```sh
$ bundle exec knife solo cook redmine-box
```


Test
--------------------------------------------------------------------------------

```sh
$ vagrant up
$ bundle exec rake spec
```
