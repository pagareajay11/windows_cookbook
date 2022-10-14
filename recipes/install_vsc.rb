#
# Cookbook:: windows_cookbook
# Recipe:: install_vsc
#
# Copyright:: 2022, The Authors, All Rights Reserved.


#custom Installer 
source = node['vsc']['exe']
windows_package 'visual studio code' do
    source source
    installer_type :custom
    options '/Q'
    not_if do ::File.exists?('C:\Users\pagar\AppData\Local\Programs\Microsoft VS Code\Code.exe') end
end

