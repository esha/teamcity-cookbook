#
# Cookbook Name:: esha-teamcity
# Spec:: agent
#

require 'spec_helper'

describe 'esha-teamcity::agent' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'includes awscli recipe' do
      expect(chef_run).to include_recipe('awscli')
    end

    it 'includes cfcli recipe' do
      expect(chef_run).to include_recipe('cfcli')
    end

    it 'includes git recipe' do
      expect(chef_run).to include_recipe('git')
    end

    it 'includes java recipe' do
      expect(chef_run).to include_recipe('java')
    end

    it 'includes teamcity::agent recipe' do
      expect(chef_run).to include_recipe('teamcity::agent')
    end
  end
end
