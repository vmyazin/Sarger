class CreateSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.string :name
      t.text :text
      t.string :type
      t.string :status
      t.integer :time
      t.references :task

      t.timestamps
    end
    add_index :subtasks, :task_id
  end
end
