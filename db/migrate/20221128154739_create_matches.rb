class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :team_one
      t.string :team_two
      t.string :stadium
      t.datetime :match_time
      t.integer :team_one_score
      t.integer :team_two_score

      t.timestamps
    end
  end
end
