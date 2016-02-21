class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
        t.text              :image_url
        t.integer           :price
        t.string            :professor
        t.text              :detail
        t.integer           :user_id


      t.timestamps
    end
  end
end
