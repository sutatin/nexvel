class AddScoreToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :score, :integer
  end
end
