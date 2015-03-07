require 'spec_helper'

describe 'esha-teamcity::agent' do
  describe command('aws --version') do
    its(:exit_status) { should eq 0 }
  end

  describe command('cf --version') do
    its(:exit_status) { should eq 0 }
  end

  describe command('git --version') do
    its(:exit_status) { should eq 0 }
  end

  describe command('java -version') do
    its(:exit_status) { should eq 0 }
  end

  it 'is listening on port 9090' do
    expect(port(9090)).to be_listening
  end

  it 'has a running service of teamcity-agent' do
    expect(service('teamcity-agent')).to be_running
  end
end
