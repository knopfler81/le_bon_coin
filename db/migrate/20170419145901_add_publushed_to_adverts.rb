class AddPublushedToAdverts < ActiveRecord::Migration[5.0]
  def change
    add_column :adverts, :published, :boolean
  end
end
