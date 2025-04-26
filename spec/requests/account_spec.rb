require 'rails_helper'

RSpec.describe "Accounts", type: :request do
  context "when signed in" do
    before do
      @user = create(:user)
      post user_session_path, params: { user: { email: @user.email, password: @user.password } }
    end
    
    it "should get index" do
      get registered_courses_path(@user.id)
      expect(response).to have_http_status(:ok)
    end
  end
end
