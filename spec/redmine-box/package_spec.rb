require 'spec_helper'

describe :Packages do
  describe 'postgresql' do
    it { should be_installed }
    it { should be_running }
    it { should be_enabled }
  end

  describe 'apache2' do
    it { should be_installed }
    it { should be_running }
    it { should be_enabled }
  end

  describe 'git' do
    it { should be_installed }
  end

  describe '/usr/local/bin/ruby-build' do
    it { should be_file }
    it { should be_executable }
  end
end
