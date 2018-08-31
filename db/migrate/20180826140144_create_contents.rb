class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.text :content
      t.string :image
      t.integer :title_id
      t.references :user
      t.references :title, foreign_key: true

      t.timestamps
    end
  end
end
