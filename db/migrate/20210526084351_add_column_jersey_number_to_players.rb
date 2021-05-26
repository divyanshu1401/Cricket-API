class AddColumnJerseyNumberToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :jersey_number, :int
  end
end
