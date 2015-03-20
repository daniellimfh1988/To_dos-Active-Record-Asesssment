require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_description
      t.timestamp
    end
  end
end
