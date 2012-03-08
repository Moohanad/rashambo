class ThrowControllerController < ApplicationController
  before_filter do
 	@defeat={rock: :scissors,paper: :rock,scissors: :paper, rock: :lizard, lizard: :spock, lizard: :paper, spock: :scissors,spock: :rock, paper: :spock, scissors: :lizard}
 	@throws=@defeat.keys
  end
  
  #def throw1

	
#@throws
 # end	
  
  def throw
player_throw = params[:type].to_sym

if !@throws.include?(player_throw)
halt 403, "You must throw one of the following: #{@throws}"
end

computer_throw = @throws.sample
@computer = computer_throw
@player = player_throw

if player_throw == computer_throw
session[:ties] ||= 0
session[:ties] = session[:ties] + 1
#index = 0
@message = "You tied with the computer. Try again!"
@title = "It's a Tie!"
elsif computer_throw == @defeat[player_throw]
session[:wins] ||= 0
session[:wins] += 1
#index = 1
@message = "Nicely done! #{@player} beats #{@computer}!"
@title = "You Win!"
else
session[:lose] ||= 0
session[:lose] += 1
#index = 2
@message = "Ouch! #{@computer} beats #{@player}. Better luck next time!"
@title = "You Lose!"
end
  
  
  end

end

