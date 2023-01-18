class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer    :desired_time_id, null: false  
      t.datetime   :start_time
      t.references :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
