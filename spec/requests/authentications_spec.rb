# frozen_string_literal: true

RSpec.describe Api::V1::AuthenticationController, type: :request do
  include Docs::V1::Authentications::Api

  let(:user) { create(:user) }

  context 'POST #login', :dox do
    include Docs::V1::Authentications::Login

    before do
      post api_v1_auth_sign_in_path, params: { email: user.email, password: user.password }
    end

    it 'returns status code 200' do
      expect(response).to be_ok
    end
  end
end
