require 'spec_helper'

describe :Packages do
  describe 'postgresql' do
    it { should be_installed }
    it { should be_running }
    it { should be_enabled }
  end
end
