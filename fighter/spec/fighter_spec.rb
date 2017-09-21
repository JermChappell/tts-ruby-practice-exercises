require '../lib.fighter'

    let(:fighter1) {Fighter.new(name:"Ryu", health: 100, power: 30)
    lef(:fighter2) {Fighter.new(name:"Chun Li", health: 100, power: 30)}
RSpec.describe Fighter do
    it '.new creates a new figher'do
    expect(fighter.new(name: "Ryu", health: 100, power: 30)).to
    be_an_instance_of Fighter
    end
    
    it "#name returns a fighter's name" do
        expect(Fighter.new(name: "Ryu", health: 100, power: 30)
    end
     
     it "#health returns a fighters health" do
        expect(Fighter.new(name: "Ryu", health: 100, power: 30)).to eq(100)
    
    it "health can be changed" do
        fighter1.health = 120
        
        expect(fighter1.health).to eq(120)
    
    end
    
    
    it "#power returns a fighter's power" do
        expect(fighter1.power).to eq (30)
        
    end
    
    it '#attacks another fighter'do
        fighter1.attack(fighter2)
        
        expect(fighter2.health).to eq(70)
    end
    
    end
end