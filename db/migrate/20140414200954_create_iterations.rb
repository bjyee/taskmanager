class CreateIterations < ActiveRecord::Migration
  def change
    create_table :iterations do |t|
      t.string :name
      t.datetime :time_start
      t.datetime :time_end
      t.text :description
      t.integer :project_id

      t.timestamps
    end
  end
end
