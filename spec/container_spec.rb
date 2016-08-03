require 'spec_helper'

describe file('/opt/anyenv') do
  it { should be_directory }
end

describe file('/opt/anyenv/envs') do
  it { should be_directory }
end

describe command('anyenv') do
  its(:stdout) { should match /Usage/ }
end


