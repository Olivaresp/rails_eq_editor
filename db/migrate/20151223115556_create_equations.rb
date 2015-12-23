class CreateEquations < ActiveRecord::Migration
  def change
    create_table :equations do |t|
      t.string :title
      t.text :figure

      t.timestamps null: false
    end
  end
end
