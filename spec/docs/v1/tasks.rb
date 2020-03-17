# frozen_string_literal: true

module Docs
  module V1
    module Tasks
      extend Dox::DSL::Syntax

      document :api do
        resource 'Tasks' do
          endpoint '/tasks'
          group 'Tasks'
        end
      end

      document :index do
        action 'Get tasks' do
          desc 'A list of Tasks'
        end
      end

      document :show do
        action 'Show task' do
          desc 'Show task'
        end
      end

      document :update do
        action 'Update task' do
          desc 'Update task'
        end
      end

      document :status do
        action 'Update status' do
          desc 'Update status'
        end
      end

      document :create do
        action 'Create task' do
          desc 'Create task'
        end
      end

      document :destroy do
        action 'Delete task' do
          desc 'Delete task'
        end
      end
    end
  end
end
