class AddUserIdToAutos < ActiveRecord::Migration
  def change
    add_column :autos, :user_id, :integer
  end
end
