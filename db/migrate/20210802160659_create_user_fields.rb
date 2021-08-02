class CreateUserFields < ActiveRecord::Migration[6.1]
  def change
    create_table :user_fields do |t|
      t.boolean :date_birth
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :city

      t.timestamps
    end
  end
end
