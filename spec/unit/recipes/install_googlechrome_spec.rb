#
# Cookbook:: windows_cookbook
# Spec:: install_googlechrome
#
# Copyright:: 2022, The Authors, All Rights Reserved.


require 'chefspec'
describe 'windows_cookbook::install_googlechrome' do
platform 'windows'
    it { is_expected.to install_windows_package('install google chrome').with(installer_type: :custom)     }
  
end
