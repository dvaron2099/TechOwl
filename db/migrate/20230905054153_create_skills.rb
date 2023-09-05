class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :Description
      t.text :Characteristic

      t.timestamps
    end
  end
end
