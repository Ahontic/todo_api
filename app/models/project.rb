# frozen_string_literal: true

class Project < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 1, maximum: 60 }

  has_many :tasks, dependent: :destroy
  belongs_to :user
end
