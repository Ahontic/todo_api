# frozen_string_literal: true

class Task < ApplicationRecord
  NAME_LENGTH = (3..60).freeze

  validates :name, presence: true, length: { in: NAME_LENGTH }
  belongs_to :project
end
