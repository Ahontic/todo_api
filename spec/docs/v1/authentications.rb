# frozen_string_literal: true

module Docs
  module V1
    module Authentications
      extend Dox::DSL::Syntax

      document :api do
        resource 'Authentications' do
          endpoint '/auth/sign_in'
          group 'Authentications'
        end
      end

      document :login do
        action 'Sign In' do
          desc 'Sign in'
        end
      end
    end
  end
end
