class CreateLekeUsers < ActiveRecord::Migration
  def change
    create_table :leke_users do |t|
      t.string :ip

      t.timestamps null: false
    end
  end
end
