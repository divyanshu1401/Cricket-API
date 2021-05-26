class AddRunsWicketsMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :runs, :int
    add_column :players, :wickets, :int
    add_column :players, :matches, :int
  end
end
