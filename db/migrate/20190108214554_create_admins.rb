class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :user_name
      t.string :Password

      t.timestamps
    end
  end
end
