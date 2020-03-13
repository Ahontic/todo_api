# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    name { FFaker::Book.title }
    deadline { FFaker::Time.date }
    project
  end
end
