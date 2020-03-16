# frozen_string_literal: true

RSpec.describe Task, type: :request do
  let!(:user) { create(:user) }
  let(:token) { JsonWebToken.encode(user_id: user.id) }
  let!(:project) { create(:project, user: user) }
  let!(:task) { create(:task, project: project) }
  let!(:task_params) { FactoryBot.attributes_for(:task) }

  describe 'POST #create' do
    it 'returns status code 201' do
      post api_v1_project_tasks_path(project), params: task_params, headers: { Authorization: token }
      expect(response).to have_http_status(201)
      expect(response).to match_response_schema('task')
    end
  end

  context 'PUT #update' do
    before do
      put api_v1_task_path(task), params: task_params, headers: { Authorization: token }
    end

    it 'returns status code 200' do
      expect(response).to be_ok
    end

    it 'changes name' do
      expect(Task.last.name).to eq(task_params[:name])
    end
  end

  context 'PUT #status' do
    before do
      put api_v1_task_path(task), params: task_params.merge(status: true), headers: { Authorization: token }
    end

    it 'returns status code 200' do
      expect(response).to be_ok
    end

    it 'changes name' do
      expect(Task.last.status).to be true
    end
  end

  context 'DELETE #destroy' do
    it 'removes task' do
      expect { delete api_v1_task_path(task), headers: { Authorization: token } }.to change(Task, :count)
        .by(-1)
    end
  end
end
