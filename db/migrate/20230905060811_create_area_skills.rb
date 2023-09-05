class CreateAreaSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :area_skills do |t|
      t.boolean :important
      t.references :area, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
