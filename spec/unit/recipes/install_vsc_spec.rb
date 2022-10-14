#
# Cookbook:: windows_cookbook
# Spec:: install_vsc
#
# Copyright:: 2022, The Authors, All Rights Reserved.

require 'chefspec'

describe 'windows_cookbook::install_vsc' do
 platform 'windows'
      it 'installs a package' do
        is_expected.to install_windows_package('visual studio code')
      end 
  end