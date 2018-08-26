class CreateTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :titles do |t|
      t.string :title
      t.references :user

      t.timestamps
    end
  end
end
