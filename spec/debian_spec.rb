# encoding: UTF-8

require 'spec_helper'

describe 'rackspace_build_essential::default' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set[:platform_family] = 'debian'
    end.converge(described_recipe)
  end

  it 'installs build_essential packages for Debian' do
    expect(chef_run).to install_package('autoconf')
    expect(chef_run).to install_package('bison')
    expect(chef_run).to install_package('binutils-doc')
    expect(chef_run).to install_package('build-essential')
    expect(chef_run).to install_package('flex')
  end

end
