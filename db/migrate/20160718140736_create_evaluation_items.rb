class CreateEvaluationItems < ActiveRecord::Migration
  def change
    create_table :evaluation_items do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
