class CreateToolAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :tool_areas do |t|
      t.boolean :important
      t.references :tool, null: false, foreign_key: true
      t.references :area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
