class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.float :amount

      t.timestamps
    end
  end
end
