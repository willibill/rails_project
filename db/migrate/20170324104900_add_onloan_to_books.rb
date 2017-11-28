class AddOnloanToBooks < ActiveRecord::Migration
  def change
    add_column :books, :onloan, :boolean
  end
end
