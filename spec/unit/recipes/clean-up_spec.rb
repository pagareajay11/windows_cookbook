#
# Cookbook:: windows_cookbook
# Spec:: clean-up
#
# Copyright:: 2022, The Authors, All Rights Reserved.


require 'chefspec'
describe 'windows_cookbook::clean-up' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2012R2')
      runner.converge(described_recipe)
    end
  
    it 'deletes the google chrome binary' do
      expect(chef_run).to delete_file('C:\chef\cache\package\ChromeSetup.exe')
    end
    it 'deletes the visual studio code binary' do
      expect(chef_run).to delete_file('C:\chef\cache\package\VSCodeUserSetup-x64-1.72.0.exe')
    end
end


