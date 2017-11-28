class CreateBooksOnLoans < ActiveRecord::Migration
  def change
    create_table :books_on_loans do |t|
      t.integer :book_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
