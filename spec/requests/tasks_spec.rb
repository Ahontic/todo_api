# frozen_string_literal: true

RSpec.describe Task, type: :request do
  include Docs::V1::Tasks::Api

  let_it_be(:user) { create(:user) }
  let(:token) { JsonWebToken.encode(user_id: user.id) }
  let_it_be(:project) { create(:project, user: user) }
  let_it_be(:task) { create(:task, project: project) }
  let(:task_params) { FactoryBot.attributes_for(:task) }

  describe 'GET #index', :dox do
    include Docs::V1::Tasks::Index

    it 'returns tasks' do
      get api_v1_project_tasks_path(project), params: {}, headers: { Authorization: token }
      expect(response).to be_ok
      expect(response.parsed_body['data'].count).to eq(user.tasks.count)
    end
  end

  context 'GET #show', :dox do
    include Docs::V1::Tasks::Show

    before do
      get api_v1_task_path(task), headers: { Authorization: token }
    end

    it 'returns status code 200' do
      expect(response).to be_ok
    end
  end

  describe 'POST #create', :dox do
    include Docs::V1::Tasks::Create

    it 'returns status code 201' do
      post api_v1_project_tasks_path(project), params: task_params, headers: { Authorization: token }
      expect(response).to have_http_status(201)
      expect(response).to match_response_schema('task')
    end
  end

  context 'PUT #update', :dox do
    include Docs::V1::Tasks::Update

    before do
      put api_v1_task_path(task), params: task_params, headers: { Authorization: token }
    end

    it 'returns status code 200' do
      expect(response).to be_ok
    end

    it 'changes name' do
      expect(task.reload.name).to eq(task_params[:name])
    end
  end

  context 'PUT #status', :dox do
    include Docs::V1::Tasks::Status

    before do
      put api_v1_task_path(task), params: task_params.merge(status: true), headers: { Authorization: token }
    end

    it 'returns status code 200' do
      expect(response).to be_ok
    end

    it 'changes status' do
      expect(task.reload.status).to be_truthy
    end
  end

  context 'DELETE #destroy', :dox do
    include Docs::V1::Tasks::Destroy

    it 'removes task' do
      expect { delete api_v1_task_path(task), headers: { Authorization: token } }.to change(Task, :count)
        .by(-1)
    end
  end
end
