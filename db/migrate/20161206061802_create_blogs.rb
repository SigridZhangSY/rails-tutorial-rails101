class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :content
      t.integer :group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
