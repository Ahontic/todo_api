# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { FFaker::Internet.disposable_email }
    password { '7qLyxOACqQ' }
  end
end
