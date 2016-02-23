class AddDetailToProducts < ActiveRecord::Migration
  def change
   add_column :products, :faculty, :integer

  end
end
