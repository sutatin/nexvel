class CreateSelectedEvaluationItems < ActiveRecord::Migration
  def change
    create_table :selected_evaluation_items do |t|
      t.integer :user_id
      t.integer :evaluation_item_id
      t.integer :importance

      t.timestamps null: false
    end
  end
end
