require 'spec_helper'

describe PublicController do
  describe "GET #index" do
    before { get :index }

    it "should be success" do
      response.should be_success
    end
  end
end
