#
# Cookbook:: windows_cookbook
# Recipe:: install_vsc
#
# Copyright:: 2022, The Authors, All Rights Reserved.


#custom Installer 
windows_package 'visual studio code' do
    source 'https://az764295.vo.msecnd.net/stable/64bbfbf67ada9953918d72e1df2f4d8e537d340e/VSCodeUserSetup-x64-1.72.0.exe'
    installer_type :custom
    options '/Q'
    not_if do ::File.exists?('C:\Users\pagar\AppData\Local\Programs\Microsoft VS Code\Code.exe') end
end

