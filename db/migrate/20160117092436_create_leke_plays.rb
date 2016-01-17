class CreateLekePlays < ActiveRecord::Migration
  def change
    create_table :leke_plays do |t|
      t.references :user

      t.timestamps null: false
    end
  end
end
