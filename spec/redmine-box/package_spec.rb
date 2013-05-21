require 'spec_helper'

describe package('postgresql') do
  it { should be_installed }
end

describe service('postgresql') do
  it { should be_running }
  it { should be_enabled }
end

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_running }
  it { should be_enabled }
end

describe package('git') do
  it { should be_installed }
end

describe file('/usr/local/bin/ruby-build') do
  it { should be_file }
  it { should be_executable }
end
