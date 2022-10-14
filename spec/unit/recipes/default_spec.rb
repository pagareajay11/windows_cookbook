

require 'chefspec'

describe 'windows_cookbook::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows', version: '2012R2').converge(described_recipe) }

  it 'includes the `install google chrome` recipe' do
    expect(chef_run).to include_recipe('windows_cookbook::install_googlechrome')
  end

  it 'includes the `install vsc recipe`' do
    expect(chef_run).to include_recipe('windows_cookbook::install_vsc')
  end


  it 'includes the `clean-up recipe`' do
    expect(chef_run).to include_recipe('windows_cookbook::clean-up')
  end
  
end
