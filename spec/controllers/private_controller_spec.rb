require 'spec_helper'

describe PrivateController do
  describe "GET #index" do
    context "not logged in" do
      before { get :index }

      it "should redirect" do
        expect(response).to redirect_to(public_path)
      end
    end

    context 'logged in' do
      let(:user) { create(:user) }

      before do
        sign_in user
        get :index
      end

      it "should success" do
        expect(response).to be_success
      end
    end
  end
end
