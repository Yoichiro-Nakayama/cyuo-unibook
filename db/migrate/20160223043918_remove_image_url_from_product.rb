class RemoveImageUrlFromProduct < ActiveRecord::Migration
  def change
      remove_column :products, :image_url, :text

  end
end
