class AddIdToAdverts < ActiveRecord::Migration[5.0]
  def change
    add_column :adverts, :category_id, :integer
  end
end
