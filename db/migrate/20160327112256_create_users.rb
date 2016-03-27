class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :avatar_url
      t.string :company
      t.string :blog
      t.string :location
      t.string :email

      t.timestamps null: false
    end
  end
end
