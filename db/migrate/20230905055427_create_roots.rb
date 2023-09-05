class CreateRoots < ActiveRecord::Migration[7.0]
  def change
    create_table :roots do |t|
      t.string :level
      t.string :duration
      t.references :area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
