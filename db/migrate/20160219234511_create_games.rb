class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :sport
      t.string :location
      t.string :time

      t.timestamps null: false
    end
  end
end
