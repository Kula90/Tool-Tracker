class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :tool, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.datetime :timestamp
      t.string :location

      t.timestamps
    end
  end
end
