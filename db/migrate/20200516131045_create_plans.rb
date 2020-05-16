class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :subject
      t.datetime :departure_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
