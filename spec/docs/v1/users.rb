# frozen_string_literal: true

module Docs
  module V1
    module Users
      extend Dox::DSL::Syntax

      document :api do
        resource 'Users' do
          endpoint '/auth'
          group 'Users'
        end
      end

      document :create do
        action 'Create user' do
          desc 'Create user'
        end
      end
    end
  end
end
