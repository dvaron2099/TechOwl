class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.string :Name
      t.text :Description
      t.integer :Number
      t.references :root, null: false, foreign_key: true

      t.timestamps
    end
  end
end
