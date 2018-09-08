class RecreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.text :content
      t.string :image
      t.references :title

      t.timestamps
    end
  end
end
