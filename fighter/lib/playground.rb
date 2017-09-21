def hola(name)
    "Hello #{name}"
end





RSpec.describe "#hola" do
  it 'greets a person with their name' do
     expect(hola('Jeremy')).to eq('Hello Jeremy') 
  end
    
end