class CreateAdverts < ActiveRecord::Migration[5.0]
  def change
    create_table :adverts do |t|
      t.string :type
      t.string :title
      t.text :description
      t.integer :price
      t.string :photos

      t.timestamps
    end
  end
end
