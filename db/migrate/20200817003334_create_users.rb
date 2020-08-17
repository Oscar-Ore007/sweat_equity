class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |u|
      u.string :username 
      u.string :email 
      u.string :password_digest
      t.timestamps 
    end 
  end
end
