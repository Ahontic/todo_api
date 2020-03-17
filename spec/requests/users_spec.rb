# frozen_string_literal: true

RSpec.describe User, type: :request do
  include Docs::V1::Users::Api

  let(:user_params) { FactoryBot.attributes_for(:user) }

  describe 'POST #create', :dox do
    include Docs::V1::Users::Create

    it 'creates new user' do
      post api_v1_auth_path, params: user_params
      expect(response).to have_http_status(201)
      expect(User.find_by(email: user_params[:email])).to be_truthy
    end
  end
end
