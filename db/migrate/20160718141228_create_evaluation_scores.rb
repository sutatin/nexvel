class CreateEvaluationScores < ActiveRecord::Migration
  def change
    create_table :evaluation_scores do |t|
      t.integer :selected_evaluation_item_id
      t.integer :interest_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
