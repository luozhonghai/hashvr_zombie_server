class AddNamePasswordToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
    add_column :admins, :password, :string
  end
end
