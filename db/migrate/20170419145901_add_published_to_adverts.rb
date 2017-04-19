class AddPublishedToAdverts < ActiveRecord::Migration[5.0]
  def change
    add_column :adverts, :published, :boolean, null: false, default: false
  end
end
