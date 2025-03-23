class CreateDateIdeas < ActiveRecord::Migration[8.0]
  def change
    create_table :date_ideas do |t|
      t.string :name
      t.string :image
      t.string :cost
      t.text :description

      t.timestamps
    end
  end
end
