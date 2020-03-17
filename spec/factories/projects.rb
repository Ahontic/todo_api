# frozen_string_literal: true

FactoryBot.define do
  factory :project do
    name { FFaker::Book.title }
    user
  end
end
