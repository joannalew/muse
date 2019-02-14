class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :location, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.string :url, null: false
      t.timestamps
    end
  end
end


