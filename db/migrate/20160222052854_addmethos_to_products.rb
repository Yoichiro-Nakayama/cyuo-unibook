class AddmethosToProducts < ActiveRecord::Migration
  def change
    add_column :products, :text_name, :string
    add_column :products, :sent_price , :string
    add_column :products, :sent_method , :string
  end
end
