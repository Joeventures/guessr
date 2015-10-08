class RenameTotalWinsColumn < ActiveRecord::Migration
  def up
    change_table :players do |t|
      t.rename :total_wins, :score
    end
    change_column_default :players, :score, 0
  end

  def down
    change_table :players do |t|
      t.rename :score, :total_wins
    end
    change_column_default :players, :total_wins, nil
  end
end