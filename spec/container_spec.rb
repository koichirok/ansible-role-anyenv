require 'spec_helper'

describe file('/opt/anyenv') do
  it { should be_directory }
end

describe file('/opt/anyenv/envs') do
  it { should be_directory }
end

describe command('ANYENV_ROOT=/opt/anyenv /opt/anyenv/bin/anyenv') do
  its(:stderr) { should contain('Usage') }
end

describe command('ANYENV_ROOT=/opt/anyenv /opt/anyenv/bin/anyenv versions') do
  its(:stdout) { should contain('rbenv') }
  its(:stdout) { should contain('pyenv') }
end

