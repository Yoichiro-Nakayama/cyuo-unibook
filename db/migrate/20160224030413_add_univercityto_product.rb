class AddUnivercitytoProduct < ActiveRecord::Migration
  def change
      add_column :products, :univercity , :string
  end
end
