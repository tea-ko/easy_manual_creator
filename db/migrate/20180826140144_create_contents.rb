class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.text :content
      t.string :image
      t.references :user

      t.timestamps
    end
  end
end
