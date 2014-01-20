# encoding: UTF-8

require 'spec_helper'

describe 'rackspace_build_essential::default' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set[:platform_family] = 'rhel'
    end.converge(described_recipe)
  end

  it 'installs build_essential packages for RHEL' do
    expect(chef_run).to install_package('autoconf')
    expect(chef_run).to install_package('bison')
    expect(chef_run).to install_package('flex')
    expect(chef_run).to install_package('gcc')
    expect(chef_run).to install_package('gcc-c++')
    expect(chef_run).to install_package('kernel-devel')
    expect(chef_run).to install_package('make')
    expect(chef_run).to install_package('m4')
  end
end
