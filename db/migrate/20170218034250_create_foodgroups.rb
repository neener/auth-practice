class CreateFoodgroups < ActiveRecord::Migration[5.0]
  def change
    create_table :foodgroups do |t|
      t.string :description
      t.integer :leftover_id
      t.timestamps
    end
  end
end
