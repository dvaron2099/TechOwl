class CreateStepTools < ActiveRecord::Migration[7.0]
  def change
    create_table :step_tools do |t|
      t.references :step, null: false, foreign_key: true
      t.references :tool, null: false, foreign_key: true

      t.timestamps
    end
  end
end
