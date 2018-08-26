class CreateTagLists < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_lists do |t|
      t.integer :title_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
