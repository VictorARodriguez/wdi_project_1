class AddPasswordIddigestToUser < ActiveRecord::Migration
  def change
  	add_column :users, :password_iddigest, :string
  end
end
