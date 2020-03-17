# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :deadline, null: false
      t.boolean :status, default: false
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
