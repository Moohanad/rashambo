require 'spec_helper'

describe ThrowControllerController do
before :each do
   @defeat={rock: :scissors,paper: :rock,scissors: :paper, rock: :lizard, lizard: :spock, lizard: :paper, spock: :scissors,spock: :rock, paper: :spock, scissors: :lizard}
  @throws=@defeat.keys

  end
  describe "GET 'throw/:type' tie" do
    it "should be successful" do
      match 'throw/:type'
	#get 'throw/rock'
	#match 'throw/:type'=> 'throw_controller#throw'

#player_throw = 'rock'
#computer_throw = 'rock'

#throwT = ThrowControllerController.new
#player = throwT.throw.player_throw.to_s

#get :throw, {:controller=>"throw_controller", :action=>"throw"}

computer_throw = @throws.sample
player_throw = @throws.sample
if player_throw == computer_throw 
index = 0
else
index = 1
end
index.should eq(1)
      response.should be_success
    end
  end


  describe "GET 'throw/:type' win" do
    it "should be successful" do
      match 'throw/:type'
computer_throw = @throws.sample
player_throw = @throws.sample

$stderr.puts computer_throw
$stderr.puts player_throw

if player_throw == :rock and computer_throw == :scissors
index = 0
elseif player_throw == :rock and computer_throw == :lizard
index = 0
elseif player_throw == :scissors and computer_throw == :paper
index = 0
elseif player_throw == :scissors and computer_throw == :lizard
index=0
elseif player_throw == :paper and computer_throw == :rock
index = 0
elseif player_throw == :paper and computer_throw == :spock
index = 0
elseif player_throw == :lizard and computer_throw == :spock
index = 0
elseif player_throw == :lizard and computer_throw == :paper
index = 0
elseif player_throw == :spock and computer_throw == :rock
index = 0
elseif player_throw == :spock and computer_throw == :scissors
index = 0
else
index =1
end
index.should eq(1)
      response.should be_success
    end
  end
  
  
  describe "GET 'throw/:type' lose" do
    it "should be successful" do
      match 'throw/:type'
computer_throw = @throws.sample
player_throw =  @throws.sample


if player_throw == :scissors and computer_throw == :rock
index = 0
elseif player_throw == :lizard and computer_throw == :rock
index = 0
elseif player_throw == :paper and computer_throw == :scissors
index = 0
elseif player_throw == :lizard and computer_throw == :scissors
index = 0
elseif player_throw == :rock and computer_throw == :paper
index = 0
elseif player_throw == :spock and computer_throw == :paper
index = 0
elseif player_throw == :spock and computer_throw == :lizard
index = 0
elseif player_throw == :paper and computer_throw == :lizard
index = 0
elseif player_throw == :rock and computer_throw == :spock
index = 0
elseif player_throw == :scissors and computer_throw == :spock
index = 0
else
index =1
end
index.should eq(1)
      response.should be_success
    end
  end


end