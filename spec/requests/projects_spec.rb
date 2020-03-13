# frozen_string_literal: true

RSpec.describe Project, type: :request do
  let(:user) { create(:user) }
  let(:token) { AuthenticateUser.call(user.username, user.password).result }
  let(:projects) { create_list(:project, 3, user_id: user.id) }
  let(:project) { create(:project, user_id: user.id) }
  let(:project_params) { FactoryBot.attributes_for(:project) }

  context 'GET #index' do
    before do
      create(:project, user: user)
      get api_v1_projects_path, headers: headers
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns projects' do
      expect(json.count).to eq(user.projects.count)
    end
  end
end
