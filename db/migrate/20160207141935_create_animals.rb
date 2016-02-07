class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :slug, index: true
      t.string :name, null: false
      t.text :lead
      t.json :description

      t.timestamps null: false
    end
  end
end
