require 'spec_helper'

describe StatsController do

  describe "GET 'stats_count'" do
    it "should be successful" do
      get 'stats_count'
      response.should be_success
    end
  end

end