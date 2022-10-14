# Chef InSpec test for recipe windows_cookbook::install_googlechrome

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/


describe file('C:\Program Files\Google\Chrome\Application\chrome.exe') do
  it { should exist }
end


 
