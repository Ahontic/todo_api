# frozen_string_literal: true

module Docs
  module V1
    module Projects
      extend Dox::DSL::Syntax

      document :api do # generates module Docs::Projects::Api
        resource 'Projects' do
          endpoint '/projects'
          group 'Projects'
        end
      end

      document :index do
        action 'Get projects' do
          desc 'A list of Projects'
        end
      end

      document :create do
        action 'Create project' do
          desc 'Creates project'
        end
      end

      document :show do
        action 'Show project'
      end

      document :update do
        action 'Update project'
      end

      document :delete do
        action 'Delete project'
      end
    end
  end
end
