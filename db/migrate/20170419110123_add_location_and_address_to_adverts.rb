class AddLocationAndAddressToAdverts < ActiveRecord::Migration[5.0]
  def change
    add_column :adverts, :location, :string
    add_column :adverts, :address, :string
  end
end
