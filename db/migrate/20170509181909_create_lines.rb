class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.text :memo

      t.timestamps null: false
    end
  end
end
