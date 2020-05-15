class CreateChecklists < ActiveRecord::Migration[5.1]
  def change
    create_table :checklists do |t|
      t.string :title
      t.string :object
      t.datetime :departure_time
      t.text :note
      t.string :check
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
