class AddUserToAdverts < ActiveRecord::Migration[5.0]
  def change
    add_reference :adverts, :user, index: true
  end
end
