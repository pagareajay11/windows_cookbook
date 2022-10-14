#
# Cookbook:: windows_cookbook
# Recipe:: clean-up
#
# Copyright:: 2022, The Authors, All Rights Reserved.

file 'C:\chef\cache\package\ChromeSetup.exe' do
    action :delete
end

file 'C:\chef\cache\package\VSCodeUserSetup-x64-1.72.0.exe' do
    action :delete
end
