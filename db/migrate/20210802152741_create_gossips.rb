class CreateGossips < ActiveRecord::Migration[6.1]
  def change
    create_table :gossips do |t|

      t.timestamps
    end
  end
end
