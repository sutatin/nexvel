class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :user_id
      t.integer :company_id
      t.string :status
      t.date :date

      t.timestamps null: false
    end
  end
end
