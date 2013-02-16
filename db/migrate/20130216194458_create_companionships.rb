class CreateCompanionships < ActiveRecord::Migration
  def change
    create_table :companionships do |t|
      t.integer :first_id
      t.integer :second_id

      t.timestamps
    end
  end
end
