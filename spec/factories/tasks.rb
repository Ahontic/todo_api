# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    name { FFaker::Book.title }
    deadline { rand(2020..2050) }
    project
  end
end
