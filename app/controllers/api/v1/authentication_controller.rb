# frozen_string_literal: true

class Api::V1::AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login

  # rubocop:disable Metrics/AbcSize
  def login
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: user.id)
      time = Time.now + 24.hours.to_i
      render json: { token: token, exp: time.strftime('%m-%d-%Y %H:%M'),
                     username: user.username }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end
  # rubocop:enable Metrics/AbcSize
end
