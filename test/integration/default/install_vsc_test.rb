# Chef InSpec test for recipe windows_cookbook::install_vsc

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

# describe windows_package('install studio code') do
#   it { should be_installed }
# end

 describe file('C:\Users\pagar\AppData\Local\Programs\Microsoft VS Code\Code.exe') do
 it { should exist }
 end