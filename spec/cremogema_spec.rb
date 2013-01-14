require 'cremogema'
require 'cremogema/native'

describe Cremogema do
  it 'should be really tasty' do
    @cremogema = Cremogema.new
    @cremogema.what.should == 'a coisa mais gostosa deste mundo'
  end
  
  it 'shold be really tasty even in another world' do
    @cremogema = Cremogema.new
    @cremogema.alien_what.should == 'a coisa mais gostosa do outro mundo'
  end
end