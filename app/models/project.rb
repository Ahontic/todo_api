# frozen_string_literal: true

class Project < ApplicationRecord
  NAME_LENGTH = (1..60).freeze

  validates :name, presence: true, uniqueness: true, length: { in: NAME_LENGTH }

  has_many :tasks, dependent: :destroy
  belongs_to :user
end
