# frozen_string_literal: true

class Task < ApplicationRecord
  TASK_NAME_LENGTH = (3..60).freeze

  validates :name, presence: true, length: { in: TASK_NAME_LENGTH }
  belongs_to :project
end
