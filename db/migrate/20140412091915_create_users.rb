class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :email

      t.timestamps
      has_many :projects
      has_many :teams
    end
  end
end
