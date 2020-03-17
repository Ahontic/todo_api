# frozen_string_literal: true

class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attribute :name, :status, :deadline
  belongs_to :project
end
