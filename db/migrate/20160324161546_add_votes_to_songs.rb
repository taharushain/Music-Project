class AddVotesToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :votes, :integer
  end
end
