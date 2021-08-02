class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :name
      t.text :email
      t.string :contact
      t.text :comment
      t.string :User
      t.string :team
      t.text :content
      t.string :first_name
      t.string :last_name
      t.string :skill

      t.timestamps
    end
  end
end
