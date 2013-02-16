class CreateAntagonisms < ActiveRecord::Migration
  def change
    create_table :antagonisms do |t|
      t.integer :first_id
      t.integer :second_id

      t.timestamps
    end
  end
end
