class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, :unique =>  true, :null => false
      t.string :password
      t.string :password_digest, :null => true
      t.string :remember_digest, :null => true
      t.string :activation_digest, :null => true
      t.boolean :activated, default: false
      t.boolean :admin, default: false
      t.timestamps
    end
  end
end
