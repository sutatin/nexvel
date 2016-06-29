class AddStatusToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :status, :string
  end
end
