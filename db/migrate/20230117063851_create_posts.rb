class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer  :desired_time_id, null: false  
      t.datetime :start_time
      t.timestamps
    end
  end
end
