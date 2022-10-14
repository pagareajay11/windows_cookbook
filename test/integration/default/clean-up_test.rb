# Chef InSpec test for recipe windows_cookbook::clean-up

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/



  describe file('C:\chef\cache\package\ChromeSetup.exe') do
    it { should_not exist }
  end

 describe file('C:\chef\cache\package\VSCodeUserSetup-x64-1.72.0.exe') do
    it { should_not exist }
  end
