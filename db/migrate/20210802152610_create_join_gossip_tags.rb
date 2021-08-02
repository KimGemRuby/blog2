class CreateJoinGossipTags < ActiveRecord::Migration[6.1]
  def change
    create_table :join_gossip_tags do |t|

      t.timestamps
    end
  end
end
