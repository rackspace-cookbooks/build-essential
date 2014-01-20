# encoding: UTF-8

require 'chefspec'

describe 'rackspace_build_essential::debian' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs build_essential packages for Debian' do
    expect(chef_run).to install_package('autoconf')
    expect(chef_run).to install_package('bison')
    expect(chef_run).to install_package('binutils-doc')
    expect(chef_run).to install_package('build-essential')
    expect(chef_run).to install_package('flex')
  end
end

describe 'rackspace_build_essential::rhel' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

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
