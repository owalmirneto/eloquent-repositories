class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.references :owner, index: true
      t.string :name
      t.string :language
      t.integer :stargazers_count
      t.text :description

      t.timestamps null: false
    end

    add_foreign_key :repositories, :users, column: :owner_id
  end
end
