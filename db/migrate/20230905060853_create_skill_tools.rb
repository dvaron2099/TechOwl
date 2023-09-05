class CreateSkillTools < ActiveRecord::Migration[7.0]
  def change
    create_table :skill_tools do |t|
      t.boolean :important
      t.references :skill, null: false, foreign_key: true
      t.references :tool, null: false, foreign_key: true

      t.timestamps
    end
  end
end
