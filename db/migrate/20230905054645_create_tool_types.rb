class CreateToolTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :tool_types do |t|
      t.string :class
      t.text :description

      t.timestamps
    end
  end
end
