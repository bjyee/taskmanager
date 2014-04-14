class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.datetime :time_start
      t.datetime :time_end

      t.timestamps
    end
  end
end
