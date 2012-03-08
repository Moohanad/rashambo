class StatsController < ApplicationController
def stats_count
  
@win = session[:wins]
@lose = session[:lose]
@tie = session[:ties]

end

end