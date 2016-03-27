class CreateRepositoriesUsers < ActiveRecord::Migration
  def change
    create_table :repositories_users, id: false do |t|
      t.belongs_to :repository, index: true
      t.belongs_to :user, index: true
    end
  end
end
