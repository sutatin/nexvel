class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :tel
      t.string :password_digest
      t.string :kind

      t.timestamps null: false
      
      t.index :email, unique: true
      t.index :tel, unique: true
      
    end
  end
end
