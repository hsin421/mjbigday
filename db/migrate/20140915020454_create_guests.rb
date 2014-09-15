class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :invites
      t.boolean :attend

      t.timestamps
    end
  end
end
