# frozen_string_literal: true

RSpec.describe Project, type: :request do
  let!(:user) { create(:user) }
  let(:token) { JsonWebToken.encode(user_id: user.id) }
  let!(:project) { create(:project, user_id: user.id) }
  let(:project_params) { FactoryBot.attributes_for(:project) }

  context 'GET #index' do
    before do
      get api_v1_projects_path, params: {}, headers: { Authorization: token }
    end

    it 'returns status code 200' do
      expect(response).to be_ok
    end

    it 'returns projects' do
      expect(response.parsed_body['data'].count).to eq(user.projects.count)
    end
  end

  describe 'POST /projects' do
    it 'creates new project' do
      post api_v1_projects_path, params: project_params, headers: { Authorization: token }
      expect(response).to have_http_status(201)
      expect(response).to match_response_schema('project')
    end
  end

  context 'GET #show' do
    before do
      get api_v1_project_path(project), headers: { Authorization: token }
    end

    it 'returns status code 200' do
      expect(response).to be_ok
    end
  end

  context 'PUT #update' do
    before do
      put api_v1_project_path(project), params: project_params, headers: { Authorization: token }
    end

    it 'returns status code 200' do
      expect(response).to be_ok
    end

    it 'changes title' do
      expect(Project.last.name).to eq(project_params[:name])
    end
  end

  context 'DELETE #destroy' do
    it 'removes project' do
      expect { delete api_v1_project_path(project), headers: { Authorization: token } }.to change(Project, :count)
        .by(-1)
    end
  end
end
