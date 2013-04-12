require 'serverspec'
require 'pathname'
require 'net/ssh'

RSpec.configure do |c|
  c.sudo_password = ENV['SUDO_PASSWORD']
  c.include(Serverspec::Helper::Ssh)
  c.include(Serverspec::Helper::Debian)
  c.before do
    host = `vagrant ssh-config | grep "^Host" | cut -d' ' -f2`
    if c.host != host
      c.ssh.close if c.ssh
      c.host  = host
      options = Net::SSH::Config.for(c.host)
      user    = options[:user] || Etc.getlogin
      c.ssh   = Net::SSH.start(c.host, user, options)
    end
  end

end
