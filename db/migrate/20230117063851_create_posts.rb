class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer  :desired_time, null: false  
      t.datetime :start_time
      t.timestamps
    end
  end
end
