class CreateWatchedlists < ActiveRecord::Migration
  def change
    create_table :watchedlists do |t|
      t.references :user, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end