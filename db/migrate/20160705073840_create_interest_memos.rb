class CreateInterestMemos < ActiveRecord::Migration
  def change
    create_table :interest_memos do |t|
      t.integer :interest_id
      t.date :date
      t.text :memo

      t.timestamps null: false
    end
  end
end
