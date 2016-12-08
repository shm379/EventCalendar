require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users/sign_in' do
    it 'Returns 200 Code' do
      get new_user_session_path
      expect(response).to have_http_status(200)
    end
  end
end