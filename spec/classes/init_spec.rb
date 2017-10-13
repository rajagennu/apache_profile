require 'spec_helper'
describe 'apache_profile' do
  context 'with default values for all parameters' do
    it { should contain_class('apache_profile') }
  end
end
