class RecreateTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :titles do |t|
      t.string :title
      t.references :category
 
      t.timestamps
    end    
  end
end
