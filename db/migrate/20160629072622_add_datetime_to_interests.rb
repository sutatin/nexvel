class AddDatetimeToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :date, :datetime
  end
end
