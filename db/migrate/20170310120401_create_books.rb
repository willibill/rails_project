class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :Author
      t.integer :ISBN
      t.string :Publisher
      t.string :Language
    

      t.timestamps null: false
    end
  end
end
